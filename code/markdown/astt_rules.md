# Abstract Syntax Tree: astt_rules

## Tree Structure

```mermaid
flowchart TD
    root["STMTS<br/>"]
    rootL["CALL<br/>CLEAR"]
    rootLL["ID<br/>CLEAR"]:::identifier
    rootL -->|L| rootLL
    rootLR["PARMS<br/>"]
    rootLRL["ID<br/>WOBJECT"]:::identifier
    rootLR -->|L| rootLRL
    rootL -->|R| rootLR
    root -->|L| rootL
    rootR["STMTS<br/>"]
    rootRL["CALL<br/>CLEAR"]
    rootRLL["ID<br/>CLEAR"]:::identifier
    rootRL -->|L| rootRLL
    rootRLR["PARMS<br/>"]
    rootRLRL["ID<br/>WPARM"]:::identifier
    rootRLR -->|L| rootRLRL
    rootRL -->|R| rootRLR
    rootR -->|L| rootRL
    rootRR["STMTS<br/>"]
    rootRRL["CALL<br/>SHOW"]
    rootRRLL["ID<br/>SHOW"]:::identifier
    rootRRL -->|L| rootRRLL
    rootRR -->|L| rootRRL
    rootR -->|R| rootRR
    root -->|R| rootR
    classDef identifier fill:#b3e6ff,stroke:#4d94ff,color:#000
    classDef number fill:#ffcccc,stroke:#ff8080,color:#000
    classDef text fill:#d9f2d9,stroke:#80cc80,color:#000
    classDef operator fill:#ffe6cc,stroke:#ffb366,color:#000
```

## Source Code

```cpp
ASTT_STMTS
```

## Metadata

- **Generated**: 2025-04-08 20:29:00
- **Node Count**: 13
- **Max Depth**: 4
- **AST Type**: STMTS
