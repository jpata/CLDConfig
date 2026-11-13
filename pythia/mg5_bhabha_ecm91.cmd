! 1) Read hard events from MG5@NLO
Beams:frameType = 4
Beams:LHEF = events.lhe

Main:numberOfEvents = 1000
Main:timesAllowErrors = 5
Random:setSeed = on

! 2) Settings related to output in init(), next() and stat().
Init:showChangedSettings = on      ! list changed settings
Init:showChangedParticleData = off ! list changed particle data
Next:numberCount = 100             ! print message every n events
Next:numberShowLHA = 0             ! print LHA information n times
Next:numberShowInfo = 1            ! print event information n times
Next:numberShowProcess = 1         ! print process record n times
Next:numberShowEvent = 0           ! print event record n times

! 3) Vertex smearing :
Beams:allowVertexSpread = on
Beams:sigmaVertexX = 6.36E-3   !  6.36 um
Beams:sigmaVertexY = 28.3E-6   !  28.3 nm
Beams:sigmaVertexZ = 0.424     !  0.424 mm

! 4) Shower the Born-level events
PDF:lepton                  = on    ! needed for lepton ISR
PartonLevel:ISR             = on
PartonLevel:FSR             = on
PartonLevel:MPI             = off
SpaceShower:QEDshowerByL    = on
TimeShower:QEDshowerByL     = on
TimeShower:QEDshowerByGamma = off   ! photon conversions are left to the detector simulation
