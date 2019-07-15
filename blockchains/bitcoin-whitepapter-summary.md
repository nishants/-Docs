# Overview of bitcoin
```
Abstract 
A purely peer-to-peer version of electronic cash would allow online
payments to be sent directly from one party to another without going through a
financial institution. Digital signatures provide part of the solution, but the main
benefits are lost if a trusted third party is still required to prevent double-spending.
We propose a solution to the double-spending problem using a peer-to-peer network.
The network timestamps transactions by hashing them into an ongoing chain of
hash-based proof-of-work, forming a record that cannot be changed without redoing
the proof-of-work. The longest chain not only serves as proof of the sequence of
events witnessed, but proof that it came from the largest pool of CPU power. As
long as a majority of CPU power is controlled by nodes that are not cooperating to
attack the network, they'll generate the longest chain and outpace attackers. The
network itself requires minimal structure. Messages are broadcast on a best effort
basis, and nodes can leave and rejoin the network at will, accepting the longest
proof-of-work chain as proof of what happened while they were gone.
```
**Objective**

To provide peer to peer to peer version of electronic cash, that would allow payments to go directly to other party, without having to pass through a financial institution.

What it is ?
- purely peer to peer -> no financial institution involved for transfering electronic cash
- Whitepaper says that digital signattures can solve a part of the problem but we need bitcoin to solve the problem of preventing **double spending**

Proposed solution
- The network timestamps transactions by hashing them into an ongoing chain of
hash-based proof-of-work, 
- forming a record that cannot be changed without redoing the proof-of-work. 
- The longest chain not only serves as proof of the sequence of events witnessed, but also proof that it came from the largest pool of CPU power. 
- As long as a majority of CPU power is controlled by nodes that are not cooperating to attack the network, they'll generate the longest chain and outpace attackers. 
- The network itself requires minimal structure. 
- Messages are broadcast on a best effortbasis
- and nodes can leave and rejoin the network at will, 
- on rejoingin node accept the longest proof-of-work chain as proof of what happened while they were gone.

Questions 
- How digital signatures allow to solve part of the poblem ? What is that part of the problem?
- What is double spending ?
- 
