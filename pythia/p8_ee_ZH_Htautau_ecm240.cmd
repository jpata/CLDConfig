! adapted from https://github.com/HEP-FCC/FCC-config/blob/winter2023/FCCee/Generator/Pythia8/p8_ee_ZZ_ecm365.cmd
! Apache License 2.0, copyright FCC-config authors, modified by Joosep Pata in 2025

Random:setSeed = on
Main:numberOfEvents = 1000         ! number of events to generate
Main:timesAllowErrors = 5          ! how many aborts before run stops

! 2) Settings related to output in init(), next() and stat().
Init:showChangedSettings = on      ! list changed settings
Init:showChangedParticleData = off ! list changed particle data
Next:numberCount = 100             ! print message every n events
Next:numberShowInfo = 1            ! print event information n times
Next:numberShowProcess = 1         ! print process record n times
Next:numberShowEvent = 0           ! print event record n times

Beams:idA = 11                   ! first beam, e+ = 11
Beams:idB = -11                   ! second beam, e- = -11

! Vertex smearing :
Beams:allowVertexSpread = on
Beams:sigmaVertexX = 9.19E-3   !  9.19 um
Beams:sigmaVertexY = 22.6E-6   !  22.6 nm
Beams:sigmaVertexZ = 0.606     !  0.606 mm

! 3) Hard process : ZH at 240 GeV
Beams:eCM = 240  ! CM energy of collision
HiggsSM:ffbar2HZ = on

! 4) Settings for the event generation process in the Pythia8 library.
PartonLevel:ISR = on               ! no initial-state radiation
PartonLevel:FSR = on               ! no final-state radiation

ParticleDecays:limitCylinder = on
ParticleDecays:xyMax = 2250.
ParticleDecays:zMax = 2500.

25:m0        = 125.0               ! Higgs mass
25:onMode    = off
25:onIfAny   = 15
