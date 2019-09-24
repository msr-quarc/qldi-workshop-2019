namespace Microsoft.Quantum.Samples.Python {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Chemistry.JordanWigner;    
    open Microsoft.Quantum.Characterization;
    open Microsoft.Quantum.Simulation;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Preparation;

    function HelloWorld (pauli : Pauli) : Unit {
        Message($"Hello, world! {pauli}");
    }

    operation NoisyHadamardChannelImpl (depol : Double, target : Qubit) : Unit {
        let idxAction = Random([1.0 - depol, depol]);

        if (idxAction == 0) {
            H(target);
        }
        else {
            PrepareSingleQubitIdentity(target);
        }
    }

    function NoisyHadamardChannel (depol : Double) : (Qubit => Unit) {
        return NoisyHadamardChannelImpl(depol, _);
    }

    operation TrotterEstimateEnergy (qSharpData: JordanWignerEncodingData, nBitsPrecision : Int, trotterStepSize : Double) : (Double, Double) {
        
        let (nSpinOrbitals, data, statePrepData, energyShift) = qSharpData!;
        
        // Order of integrator
        let trotterOrder = 1;
        let (nQubits, (rescaleFactor, oracle)) = TrotterStepOracle(qSharpData, trotterStepSize, trotterOrder);
        
        // Prepare ProductState
        let statePrep =  PrepareTrialState(statePrepData, _);
        let phaseEstAlgorithm = RobustPhaseEstimation(nBitsPrecision, _, _);
        let estPhase = EstimateEnergyWithAdiabaticEvolution(nQubits, statePrep, NoOp<Qubit[]>, oracle, phaseEstAlgorithm);
        let estEnergy = estPhase * rescaleFactor + energyShift;
        return (estPhase, estEnergy);
    }

}