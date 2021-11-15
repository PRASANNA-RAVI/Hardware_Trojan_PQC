# SABER_HardTrojan

This is the source-code for the paper 'On Threat of Hardware Trojan To Post-Quantum Lattice-based Schemes: A Key Recovery Attack on SABER and Beyond' accepted for publication in SPACE 2021 (December 10-13, 2021, Kolkata / IIT Kharagpur, India). 

In this work, we demonstrate the insertion of a Trojan in hardware implementation of the lattice-based post-quantum key encapsulation (KEM) scheme SABER. To the best of our knowledge, this is the first work of Trojan-ing a post-quantum cryptographic scheme in hardware. We coded the Trojan in the Verilog implementation of SABER that is publicly available in https://github.com/sujoyetc/SABER_HW 

The Trojan is implemented in the following files in SABER_HW-master/Verilog_src/Saber_blocks:
1. unpack.v
2. verify.v
3. ComputeCore3.v

The Trojan code-lines have been commented for the understanding of the user. We simulated the Trojan-ed SABER in Vivado.

For more details of this Trojan, please read the paper 'On Threat of Hardware Trojan To Post-Quantum Lattice-based Schemes: A Key Recovery Attack on SABER and Beyond'. If you make use of our Trojan in your work, please cite this paper.


