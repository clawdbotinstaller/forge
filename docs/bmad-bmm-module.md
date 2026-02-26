# BMAD BMM (Business Methodology Module) - Comprehensive Analysis

## Executive Summary

The **BMAD Business Methodology Module (BMM)** is the strategic planning and requirements engineering layer of the BMAD (Build Me A Dream) methodology. It provides a structured, AI-native approach to product development that bridges the gap between human product vision and AI implementation capabilities.

BMM operates as a **four-phase lifecycle system** that transforms vague ideas into implementation-ready specifications through collaborative AI-human workflows. It is designed around the principle that **high-quality inputs produce high-quality outputs** - investing in thorough planning dramatically improves AI implementation success.

---

## 1. What BMM Does: Business/Product Methodology

### Core Purpose

BMM serves as the **planning and requirements backbone** of the BMAD ecosystem. Its fundamental purpose is to:

1. **Capture Business Intent**: Transform human ideas, market opportunities, and user needs into structured, actionable specifications
2. **Enable AI Consistency**: Create documents that AI agents can consume deterministically, reducing hallucination and implementation drift
3. **Maintain Traceability**: Ensure every implementation decision can be traced back to business requirements and user needs
4. **Facilitate Collaboration**: Provide structured workflows where humans and AI agents work as peers, not master-servant

### Key Value Propositions

| Value | Description |
|-------|-------------|
| **Reduced Rework** | Thorough planning prevents costly mid-implementation changes |
| **AI Alignment** | Structured documents ensure AI agents implement consistently |
| **Knowledge Preservation** | Documents serve as organizational memory and onboarding resources |
| **Stakeholder Communication** | Clear artifacts for technical and non-technical stakeholders |
| **Risk Mitigation** | Early identification of domain complexities, compliance needs, and technical constraints |

### The Dual-Audience Philosophy

Every BMM document is designed for **two audiences simultaneously**:

1. **Human Stakeholders**: Product managers, executives, designers, and developers who need to understand vision, scope, and requirements
2. **AI Agents**: Downstream LLMs that consume these documents to produce UX designs, architecture, epics, and implementation

This dual-audience approach requires:
- **High information density**: Every sentence carries weight; zero fluff
- **Precise, testable language**: Requirements must be verifiable
- **Consistent structure**: Enables AI parsing and extraction
- **Markdown format**: Human-readable and AI-parseable

### Information Density Principles

BMM enforces high signal-to-noise ratios:

| Anti-Pattern | Correct Form |
|--------------|--------------|
| "The system will allow users to..." | "Users can..." |
| "It is important to note that..." | State the fact directly |
| "In order to..." | "To..." |
| "easy to use", "intuitive" | "completes task in under 3 clicks" |

---

## 2. BMM Agents: Detailed Role and Capability Analysis

BMM provides **9 specialized agents**, each embodying a distinct professional role with specific expertise, communication styles, and operational principles.

### 2.1 Product Manager (PM) - "John"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/pm.md`

**Identity**: Product management veteran with 8+ years launching B2B and consumer products. Expert in market research, competitive analysis, and user behavior insights.

**Communication Style**: Asks 'WHY?' relentlessly like a detective on a case. Direct and data-sharp, cuts through fluff to what actually matters.

**Core Principles**:
- Channel expert product manager thinking: user-centered design, Jobs-to-be-Done framework, opportunity scoring
- PRDs emerge from user interviews, not template filling
- Ship the smallest thing that validates the assumption
- Technical feasibility is a constraint, not the driver

**Menu Commands**:
| Command | Description |
|---------|-------------|
| CP | Create PRD: Expert-led facilitation for Product Requirements Document |
| VP | Validate PRD: Validate PRD comprehensiveness and quality |
| EP | Edit PRD: Update existing PRD |
| CE | Create Epics and Stories: Create specs that drive development |
| IR | Implementation Readiness: Ensure PRD, UX, Architecture alignment |
| CC | Course Correction: Navigate major changes mid-implementation |

**When to Use**: Creating product requirements, validating specifications, managing scope, preparing epics and stories

---

### 2.2 Business Analyst (Analyst) - "Mary"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/analyst.md`

**Identity**: Senior analyst with deep expertise in market research, competitive analysis, and requirements elicitation. Specializes in translating vague needs into actionable specs.

**Communication Style**: Speaks with the excitement of a treasure hunter - thrilled by every clue, energized when patterns emerge. Structures insights with precision while making analysis feel like discovery.

**Core Principles**:
- Channel expert business analysis frameworks: Porter's Five Forces, SWOT, root cause analysis
- Every business challenge has root causes waiting to be discovered
- Ground findings in verifiable evidence
- Articulate requirements with absolute precision

**Menu Commands**:
| Command | Description |
|---------|-------------|
| BP | Brainstorm Project: Expert-guided facilitation with final report |
| MR | Market Research: Market analysis, competitive landscape, customer needs |
| DR | Domain Research: Industry domain deep dive, subject matter expertise |
| TR | Technical Research: Technical feasibility, architecture options |
| CB | Create Brief: Guided experience to create executive product brief |
| DP | Document Project: Analyze existing project for documentation |

**When to Use**: Early-stage exploration, research activities, understanding problem domains, competitive analysis

---

### 2.3 Architect - "Winston"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/architect.md`

**Identity**: Senior architect with expertise in distributed systems, cloud infrastructure, and API design. Specializes in scalable patterns and technology selection.

**Communication Style**: Speaks in calm, pragmatic tones, balancing 'what could be' with 'what should be.'

**Core Principles**:
- Channel expert lean architecture wisdom: distributed systems, cloud patterns, scalability trade-offs
- User journeys drive technical decisions
- Embrace boring technology for stability
- Design simple solutions that scale when needed
- Developer productivity is architecture

**Menu Commands**:
| Command | Description |
|---------|-------------|
| CA | Create Architecture: Document technical decisions for AI consistency |
| IR | Implementation Readiness: Ensure all specs are aligned |

**When to Use**: Technical planning, architecture decisions, infrastructure planning, technology selection

---

### 2.4 UX Designer - "Sally"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/ux-designer.md`

**Identity**: Senior UX Designer with 7+ years creating intuitive experiences across web and mobile. Expert in user research, interaction design, AI-assisted tools.

**Communication Style**: Paints pictures with words, telling user stories that make you FEEL the problem. Empathetic advocate with creative storytelling flair.

**Core Principles**:
- Every decision serves genuine user needs
- Start simple, evolve through feedback
- Balance empathy with edge case attention
- AI tools accelerate human-centered design

**Menu Commands**:
| Command | Description |
|---------|-------------|
| CU | Create UX: Plan UX patterns and design specifications |

**When to Use**: User experience planning, interaction design, design system definition, user journey mapping

---

### 2.5 Developer Agent (Dev) - "Amelia"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/dev.md`

**Identity**: Executes approved stories with strict adherence to story details and team standards.

**Communication Style**: Ultra-succinct. Speaks in file paths and AC IDs - every statement citable. No fluff, all precision.

**Core Principles**:
- All existing and new tests must pass 100% before story is ready
- Every task/subtask must be covered by comprehensive unit tests
- Story Context XML is the single source of truth

**Menu Commands**:
| Command | Description |
|---------|-------------|
| DS | Dev Story: Write tests and code for next/specific stories |
| CR | Code Review: Comprehensive code review across quality facets |

**When to Use**: Implementation phase, executing stories, code reviews

---

### 2.6 QA Engineer - "Quinn"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/qa.md`

**Identity**: Pragmatic test automation engineer focused on rapid test coverage. Simpler, more direct approach than the advanced Test Architect module.

**Communication Style**: Practical and straightforward. Gets tests written fast without overthinking. 'Ship it and iterate' mentality.

**Core Principles**:
- Generate API and E2E tests for existing code
- Tests should pass on first run
- Use standard test framework patterns
- Focus on happy path + critical edge cases

**Menu Commands**:
| Command | Description |
|---------|-------------|
| QA | Automate: Generate tests for existing features (simplified) |

**When to Use**: Quick test coverage, small-medium projects, standard test patterns

---

### 2.7 Scrum Master (SM) - "Bob"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/sm.md`

**Identity**: Certified Scrum Master with deep technical background. Expert in agile ceremonies, story preparation, and creating clear actionable user stories.

**Communication Style**: Crisp and checklist-driven. Every word has a purpose, every requirement crystal clear. Zero tolerance for ambiguity.

**Core Principles**:
- Servant leader - helps with any task
- Strict boundaries between story prep and implementation
- Stories are single source of truth
- Perfect alignment between PRD and dev execution

**Menu Commands**:
| Command | Description |
|---------|-------------|
| SP | Sprint Planning: Generate sprint plan for development tasks |
| CS | Create Story: Prepare story with all required context |
| ER | Epic Retrospective: Party Mode review of completed work |
| CC | Course Correction: Navigate major changes mid-implementation |

**When to Use**: Sprint planning, story preparation, retrospectives, agile process management

---

### 2.8 Quick Flow Solo Dev - "Barry"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/quick-flow-solo-dev.md`

**Identity**: Elite developer who thrives on autonomous execution. Handles Quick Flow - from tech spec creation through implementation.

**Communication Style**: Direct, confident, and implementation-focused. Uses tech slang (refactor, patch, extract, spike). No fluff, just results.

**Core Principles**:
- Planning and execution are two sides of the same coin
- Specs are for building, not bureaucracy
- Code that ships is better than perfect code that doesn't
- Documentation happens alongside development

**Menu Commands**:
| Command | Description |
|---------|-------------|
| QS | Quick Spec: Architect quick but complete technical spec |
| QD | Quick-flow Develop: Implement story tech spec end-to-end |
| CR | Code Review: Comprehensive code review |

**When to Use**: Small projects, rapid prototyping, utilities, brownfield additions, when full BMM process is overkill

---

### 2.9 Technical Writer - "Paige"

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/agents/tech-writer/tech-writer.md`

**Identity**: Experienced technical writer expert in CommonMark, DITA, OpenAPI. Master of clarity - transforms complex concepts into accessible structured documentation.

**Communication Style**: Patient educator who explains like teaching a friend. Uses analogies that make complex simple.

**Core Principles**:
- Every document helps someone accomplish a task
- Clarity above all
- A picture/diagram is worth 1000s of words
- Know the intended audience

**Menu Commands**:
| Command | Description |
|---------|-------------|
| DP | Document Project: Generate comprehensive project documentation |
| WD | Write Document: Author document following best practices |
| US | Update Standards: Update documentation standards with preferences |
| MG | Mermaid Generate: Create Mermaid-compliant diagrams |
| VD | Validate Documentation: Validate against standards |
| EC | Explain Concept: Create clear technical explanations |

**When to Use**: Documentation creation, diagram generation, brownfield analysis, concept explanation

---

## 3. BMM Workflows: Detailed Breakdown

BMM organizes workflows into **four phases** that mirror the product development lifecycle:

### Phase 1: Analysis (1-analysis)

**Purpose**: Understand the problem space, market, domain, and user needs before committing to solutions.

#### 3.1.1 Brainstorm Project (BP)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/`

**Agent**: Analyst (Mary)

**Description**: Expert-guided facilitation through single or multiple brainstorming techniques with a final report.

**Data Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/data/project-context-template.md`

**Exploration Areas**:
- User Problems and Pain Points
- Feature Ideas and Capabilities
- Technical Approaches
- User Experience
- Business Model and Value
- Market Differentiation
- Technical Risks and Challenges
- Success Metrics

**Output**: Brainstorming session report feeding into Product Briefs or PRDs

---

#### 3.1.2 Market Research (MR)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/research/workflow-market-research.md`

**Agent**: Analyst (Mary)

**Description**: Market analysis, competitive landscape, customer needs and trends using current web data.

**Prerequisite**: Web search capability required

**Steps**:
1. **Init** (step-01-init.md): Initialize research workspace
2. **Customer Behavior** (step-02-customer-behavior.md): Analyze how customers behave in this market
3. **Pain Points** (step-03-customer-pain-points.md): Identify customer problems
4. **Decision Factors** (step-04-customer-decisions.md): Understand purchase/drivers
5. **Competitive Analysis** (step-05-competitive-analysis.md): Analyze competitors
6. **Completion** (step-06-research-completion.md): Synthesize findings

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/research/research.template.md`

**Output**: Market research document with citations and compelling narrative

---

#### 3.1.3 Domain Research (DR)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/research/workflow-domain-research.md`

**Agent**: Analyst (Mary)

**Description**: Industry domain deep dive, subject matter expertise and terminology.

**Steps**:
1. **Init**: Initialize research
2. **Domain Analysis**: Deep dive into industry specifics
3. **Competitive Landscape**: Domain-specific competitors
4. **Regulatory Focus**: Compliance and regulatory requirements
5. **Technical Trends**: Domain technology trends
6. **Synthesis**: Compile findings

**Output**: Domain expertise document with terminology, regulations, and industry standards

---

#### 3.1.4 Technical Research (TR)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/research/workflow-technical-research.md`

**Agent**: Analyst (Mary)

**Description**: Technical feasibility, architecture options and implementation approaches.

**Steps**:
1. **Init**: Initialize research
2. **Technical Overview**: High-level technical landscape
3. **Integration Patterns**: How systems integrate
4. **Architectural Patterns**: Common architectures for this domain
5. **Implementation Research**: Specific implementation approaches
6. **Synthesis**: Compile technical findings

**Output**: Technical research document with architecture options and feasibility analysis

---

#### 3.1.5 Create Product Brief (CB)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/create-product-brief/workflow.md`

**Agent**: Analyst (Mary)

**Description**: A guided experience to nail down your product idea into an executive brief.

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/1-analysis/create-product-brief/product-brief.template.md`

**Steps**:
1. **Init** (step-01-init.md): Initialize workspace and discover inputs
2. **Vision** (step-02-vision.md): Define product vision
3. **Users** (step-03-users.md): Identify target users
4. **Metrics** (step-04-metrics.md): Define success metrics
5. **Scope** (step-05-scope.md): Define MVP and growth scope
6. **Complete** (step-06-complete.md): Finalize brief

**Output**: Product brief document (executive-level product definition)

---

### Phase 2: Planning (2-plan-workflows)

**Purpose**: Create detailed specifications that bridge business requirements to implementation.

#### 3.2.1 Create PRD (CP)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/workflow-create-prd.md`

**Agent**: PM (John)

**Description**: Expert-led facilitation to produce your Product Requirements Document.

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/templates/prd-template.md`

**Data Files**:
- `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/data/project-types.csv`
- `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/data/domain-complexity.csv`
- `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/data/prd-purpose.md`

**Steps (13 total)**:

| Step | File | Purpose |
|------|------|---------|
| 1 | step-01-init.md | Initialize workflow, discover inputs |
| 1b | step-01b-continue.md | Handle workflow continuation |
| 2 | step-02-discovery.md | Project type and domain classification |
| 2b | step-02b-vision.md | Product vision definition |
| 2c | step-02c-executive-summary.md | Executive summary creation |
| 3 | step-03-success.md | Success criteria (SMART) |
| 4 | step-04-journeys.md | User journey mapping |
| 5 | step-05-domain.md | Domain requirements |
| 6 | step-06-innovation.md | Innovation analysis |
| 7 | step-07-project-type.md | Project-type requirements |
| 8 | step-08-scoping.md | Product scope (MVP/Growth/Vision) |
| 9 | step-09-functional.md | Functional requirements synthesis |
| 10 | step-10-nonfunctional.md | Non-functional requirements |
| 11 | step-11-polish.md | Document polish |
| 12 | step-12-complete.md | Finalization |

**Key Features**:
- Auto-detection of project type (API, mobile, SaaS, CLI, etc.)
- Domain complexity assessment (healthcare, fintech, govtech, etc.)
- Party Mode integration for collaborative sessions
- Advanced Elicitation for complex requirements

**Output**: PRD document with traceability chain from vision to requirements

---

#### 3.2.2 Validate PRD (VP)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/workflow-validate-prd.md`

**Agent**: PM (John)

**Description**: Validate a Product Requirements Document is comprehensive, lean, well-organized and cohesive.

**Validation Steps (13 total)**:

| Step | File | Validation Focus |
|------|------|------------------|
| 1 | step-v-01-discovery.md | Document discovery |
| 2 | step-v-02-format-detection.md | Format detection |
| 2b | step-v-02b-parity-check.md | Parity check |
| 3 | step-v-03-density-validation.md | Information density |
| 4 | step-v-04-brief-coverage-validation.md | Brief coverage |
| 5 | step-v-05-measurability-validation.md | Measurability |
| 6 | step-v-06-traceability-validation.md | Traceability |
| 7 | step-v-07-implementation-leakage-validation.md | Implementation leakage |
| 8 | step-v-08-domain-compliance-validation.md | Domain compliance |
| 9 | step-v-09-project-type-validation.md | Project-type requirements |
| 10 | step-v-10-smart-validation.md | SMART criteria |
| 11 | step-v-11-holistic-quality-validation.md | Holistic quality |
| 12 | step-v-12-completeness-validation.md | Completeness |
| 13 | step-v-13-report-complete.md | Report completion |

**Validation Criteria**:
- **Density**: High signal-to-noise ratio, no fluff
- **Measurability**: All requirements have test criteria
- **Traceability**: Each requirement links to user need
- **Implementation Leakage**: No premature technical decisions
- **Domain Compliance**: Industry-specific requirements present
- **SMART**: Specific, Measurable, Attainable, Relevant, Traceable

**Output**: PRD validation report with specific improvement recommendations

---

#### 3.2.3 Edit PRD (EP)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/workflow-edit-prd.md`

**Agent**: PM (John)

**Description**: Update an existing Product Requirements Document.

**Steps**:
1. **Discovery** (step-e-01-discovery.md): Discover existing PRD
2. **Legacy Conversion** (step-e-01b-legacy-conversion.md): Convert legacy formats if needed
3. **Review** (step-e-02-review.md): Review current state
4. **Edit** (step-e-03-edit.md): Make edits
5. **Complete** (step-e-04-complete.md): Finalize

**Output**: Updated PRD document

---

#### 3.2.4 Create UX Design (CU)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-ux-design/workflow.md`

**Agent**: UX Designer (Sally)

**Description**: Guidance through realizing the plan for your UX to inform architecture and implementation.

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-ux-design/ux-design-template.md`

**Steps (14 total)**:

| Step | File | Focus Area |
|------|------|------------|
| 1 | step-01-init.md | Initialize UX workspace |
| 1b | step-01b-continue.md | Handle continuation |
| 2 | step-02-discovery.md | UX discovery |
| 3 | step-03-core-experience.md | Core experience definition |
| 4 | step-04-emotional-response.md | Emotional response design |
| 5 | step-05-inspiration.md | Inspiration gathering |
| 6 | step-06-design-system.md | Design system selection |
| 7 | step-07-defining-experience.md | Defining experience |
| 8 | step-08-visual-foundation.md | Visual foundation |
| 9 | step-09-design-directions.md | Design directions |
| 10 | step-10-user-journeys.md | User journey details |
| 11 | step-11-component-strategy.md | Component strategy |
| 12 | step-12-ux-patterns.md | UX patterns |
| 13 | step-13-responsive-accessibility.md | Responsive and accessibility |
| 14 | step-14-complete.md | Finalization |

**Output**: UX Design Specification document

---

### Phase 3: Solutioning (3-solutioning)

**Purpose**: Transform requirements into technical solutions and implementation-ready specifications.

#### 3.3.1 Create Architecture (CA)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/create-architecture/workflow.md`

**Agent**: Architect (Winston)

**Description**: Guided workflow to document technical decisions to keep implementation on track.

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/create-architecture/architecture-decision-template.md`

**Data Files**:
- `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/create-architecture/data/domain-complexity.csv`
- `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/create-architecture/data/project-types.csv`

**Steps (8 total)**:

| Step | File | Focus |
|------|------|-------|
| 1 | step-01-init.md | Initialize architecture workspace |
| 1b | step-01b-continue.md | Handle continuation |
| 2 | step-02-context.md | Project context analysis |
| 3 | step-03-starter.md | Starter template selection |
| 4 | step-04-decisions.md | Architecture decisions |
| 5 | step-05-patterns.md | Pattern selection |
| 6 | step-06-structure.md | System structure |
| 7 | step-07-validation.md | Architecture validation |
| 8 | step-08-complete.md | Finalization |

**Output**: Architecture Decision Document

---

#### 3.3.2 Create Epics and Stories (CE)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/create-epics-and-stories/workflow.md`

**Agent**: PM (John)

**Description**: Create the Epics and Stories Listing - the specs that drive development.

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/create-epics-and-stories/templates/epics-template.md`

**Steps (4 total)**:

| Step | File | Purpose |
|------|------|---------|
| 1 | step-01-validate-prerequisites.md | Validate PRD, Architecture, UX exist; extract all requirements |
| 2 | step-02-design-epics.md | Design epics based on requirements |
| 3 | step-03-create-stories.md | Create stories within epics |
| 4 | step-04-final-validation.md | Validate coverage and completeness |

**Prerequisites**:
- PRD.md (required)
- Architecture.md (required)
- UX Design.md (if UI exists)

**Output**: Epics and Stories document with full requirements coverage map

---

#### 3.3.3 Check Implementation Readiness (IR)

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/check-implementation-readiness/workflow.md`

**Agents**: PM (John), Architect (Winston)

**Description**: Ensure the PRD, UX, Architecture and Epics and Stories List are all aligned.

**Template**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/3-solutioning/check-implementation-readiness/templates/readiness-report-template.md`

**Steps (6 total)**:

| Step | File | Validation Area |
|------|------|-----------------|
| 1 | step-01-document-discovery.md | Discover all planning documents |
| 2 | step-02-prd-analysis.md | Analyze PRD completeness |
| 3 | step-03-epic-coverage-validation.md | Validate epic coverage of requirements |
| 4 | step-04-ux-alignment.md | Check UX alignment with PRD |
| 5 | step-05-epic-quality-review.md | Review epic and story quality |
| 6 | step-06-final-assessment.md | Final readiness assessment |

**Output**: Implementation Readiness Assessment Report

---

### Phase 4: Implementation (4-implementation)

**Purpose**: Execute the planned work through structured development cycles.

**Note**: Implementation workflows are referenced in the module-help.csv but their detailed step files are not present in the analyzed BMM directory. These workflows orchestrate the Dev, QA, and SM agents.

**Key Workflows**:

| Workflow | Command | Agent | Purpose |
|----------|---------|-------|---------|
| Sprint Planning | SP | SM | Generate sprint plan for development tasks |
| Create Story | CS | SM | Prepare story with all required context |
| Dev Story | DS | Dev | Execute story implementation |
| Code Review | CR | Dev | Comprehensive code review |
| QA Automation | QA | QA | Generate automated tests |
| Retrospective | ER | SM | Review completed work |
| Correct Course | CC | SM | Navigate significant changes |

---

### Anytime Workflows

These workflows can be executed at any phase:

| Workflow | Command | Agent | Purpose |
|----------|---------|-------|---------|
| Document Project | DP | Analyst/Tech Writer | Analyze existing project for documentation |
| Generate Project Context | GPC | Analyst | Create LLM-optimized project context |
| Quick Spec | QS | Quick Flow Solo Dev | Rapid tech spec creation |
| Quick Dev | QD | Quick Flow Solo Dev | Quick implementation flow |
| Write Document | WD | Tech Writer | Create documentation |
| Mermaid Generate | MG | Tech Writer | Create diagrams |
| Validate Document | VD | Tech Writer | Validate documentation |
| Explain Concept | EC | Tech Writer | Create technical explanations |

---

## 4. How BMM Handles Requirements and Planning

### 4.1 The Traceability Chain

BMM establishes a clear traceability chain that ensures every implementation decision can be traced back to business value:

```
Vision → Success Criteria → User Journeys → Functional Requirements → User Stories
```

**Traceability Requirements**:
- Each success criterion must align with vision
- Each user journey must enable success criteria
- Each functional requirement must trace to user journeys
- Each user story must implement functional requirements

### 4.2 Requirements Classification System

BMM uses a sophisticated classification system based on two dimensions:

#### Project Types

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/data/project-types.csv`

| Project Type | Detection Signals | Required Sections |
|--------------|-------------------|-------------------|
| api_backend | API, REST, GraphQL, backend | endpoint_specs, auth_model, data_schemas |
| mobile_app | iOS, Android, mobile, app | platform_reqs, device_permissions, offline_mode |
| saas_b2b | SaaS, B2B, platform, dashboard | tenant_model, rbac_matrix, subscription_tiers |
| developer_tool | SDK, library, package, npm | language_matrix, installation_methods |
| cli_tool | CLI, command, terminal, bash | command_structure, output_formats |
| web_app | website, webapp, browser, SPA | browser_matrix, responsive_design |
| desktop_app | desktop, Windows, Mac, Linux | platform_support, system_integration |
| iot_embedded | IoT, embedded, device, sensor | hardware_reqs, connectivity_protocol |
| blockchain_web3 | blockchain, crypto, DeFi, NFT | chain_specs, wallet_support |

#### Domain Complexity

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/workflows/2-plan-workflows/create-prd/data/domain-complexity.csv`

| Domain | Complexity | Key Concerns |
|--------|------------|--------------|
| healthcare | high | FDA approval, HIPAA, patient safety |
| fintech | high | PCI-DSS, KYC/AML, audit requirements |
| govtech | high | FedRAMP, Section 508, procurement rules |
| aerospace | high | DO-178C, safety certification, ITAR |
| automotive | high | ISO 26262, V2X, real-time requirements |
| legaltech | high | Legal ethics, bar regulations, privilege |
| insuretech | high | State compliance, actuarial standards |
| energy | high | NERC standards, environmental regulations |
| process_control | high | Functional safety, OT cybersecurity |
| building_automation | high | Life safety, energy standards |
| edtech | medium | COPPA/FERPA, accessibility |
| scientific | medium | Reproducibility, validation methodology |
| general | low | Standard requirements, basic security |

### 4.3 SMART Requirements Framework

All requirements in BMM must be **SMART**:

| Criterion | Description | Example |
|-----------|-------------|---------|
| **S**pecific | Clear, precisely defined | "Users can reset password via email" |
| **M**easurable | Quantifiable with test criteria | "API responds in under 200ms for 95th percentile" |
| **A**ttainable | Realistic within constraints | Not requiring impossible technology |
| **R**elevant | Aligns with business objectives | Directly supports user needs |
| **T**raceable | Links to source | Maps to executive summary or user journey |

### 4.4 Functional vs Non-Functional Requirements

#### Functional Requirements (FRs)

**Purpose**: Define WHAT capabilities the product must have

**Properties**:
- Each FR is a testable capability
- Implementation-agnostic (could be built many ways)
- Specifies WHO and WHAT, not HOW
- No UI details, no performance numbers, no technology choices

**Format**: `FR#: [Actor] can [capability] [context/constraint]`

**Examples**:
- ✅ "Users can customize appearance settings"
- ❌ "Users can toggle light/dark theme with 3 font size options stored in LocalStorage" (implementation leakage)

**Target**: 20-50 FRs for typical projects, organized by 5-8 capability areas

#### Non-Functional Requirements (NFRs)

**Purpose**: Define quality attributes and constraints

**Template**: "The system shall [metric] [condition] [measurement method]"

**Examples**:
- ✅ "The system shall respond to API requests in under 200ms for 95th percentile as measured by APM monitoring"
- ✅ "The system shall maintain 99.9% uptime during business hours as measured by cloud provider SLA"

### 4.5 The Capability Contract

**Critical Concept**: The Functional Requirements section defines THE CAPABILITY CONTRACT for the entire product:

- UX designers will ONLY design what's listed in FRs
- Architects will ONLY support what's listed in FRs
- Epic breakdown will ONLY implement what's listed in FRs
- If a capability is missing from FRs, it will NOT exist in the final product

This makes FR completeness critical - missing capabilities in the PRD phase become missing features in the final product.

---

## 5. The 4-Phase Lifecycle

### Phase 1: Analysis (Understand Before Building)

**Goal**: Deeply understand the problem space before committing to solutions

**Activities**:
- Brainstorming and ideation
- Market research (competition, customers, trends)
- Domain research (industry specifics, regulations, terminology)
- Technical research (feasibility, options, approaches)
- Product brief creation (executive-level vision)

**Key Principle**: "Weeks of programming can save hours of planning" - invest in understanding first

**Exit Criteria**:
- Clear problem definition
- Market and competitive understanding
- Domain expertise acquired
- Initial product vision documented

---

### Phase 2: Planning (Define What to Build)

**Goal**: Create detailed specifications that bridge business needs to implementation

**Activities**:
- PRD creation (comprehensive requirements)
- PRD validation (quality assurance)
- UX design specification
- User journey mapping
- Success criteria definition

**Key Principle**: The PRD is the top of the required funnel - quality here ripples through everything downstream

**Exit Criteria**:
- Approved PRD with complete FRs and NFRs
- UX design specification (if UI involved)
- All requirements traceable to user needs
- Domain-specific requirements identified and included

---

### Phase 3: Solutioning (Design How to Build)

**Goal**: Transform requirements into technical solutions and implementation-ready specs

**Activities**:
- Architecture design (technical decisions, patterns, structure)
- Epic and story creation (development breakdown)
- Implementation readiness check (alignment validation)

**Key Principle**: Architecture decisions prevent implementation conflicts and ensure AI consistency

**Exit Criteria**:
- Architecture Decision Document complete
- Epics and Stories document with full requirements coverage
- Implementation Readiness Assessment passed
- All PRD requirements mapped to epics/stories

---

### Phase 4: Implementation (Build and Deliver)

**Goal**: Execute the planned work through structured development cycles

**Activities**:
- Sprint planning
- Story preparation and validation
- Development execution
- Code review
- Test automation
- Retrospectives

**Key Principle**: Strict adherence to story specifications - no deviation from planned work

**Exit Criteria**:
- All stories implemented
- All tests passing
- Code reviewed and approved
- Epic complete and deployed

---

### Phase Transitions

BMM enforces strict phase gates:

| From | To | Gate Criteria |
|------|-----|---------------|
| Analysis | Planning | Product brief approved, research complete |
| Planning | Solutioning | PRD validated, UX design complete |
| Solutioning | Implementation | Implementation readiness check passed |
| Implementation | Complete | All stories done, tests passing, deployed |

---

## 6. Document Generation Patterns

### 6.1 Template-Based Generation

All BMM documents follow a **template pattern**:

1. **Template Storage**: Templates in `templates/` directories
2. **Frontmatter Tracking**: YAML frontmatter tracks workflow state
3. **Append-Only Building**: Content appended sequentially through workflow steps
4. **State Persistence**: `stepsCompleted` array tracks progress

**Example Template Structure** (PRD):
```yaml
---
stepsCompleted: []
inputDocuments: []
workflowType: 'prd'
---

# Product Requirements Document - {{project_name}}

**Author:** {{user_name}}
**Date:** {{date}}
```

### 6.2 Step-File Architecture

BMM uses **micro-file architecture** for disciplined execution:

**Principles**:
- Each step is a self-contained instruction file
- Just-in-time loading: Only current step in memory
- Sequential enforcement: No skipping or optimization
- State tracking: Progress in frontmatter
- Append-only building: Content appended to output

**Step Processing Rules**:
1. READ COMPLETELY: Always read entire step file before action
2. FOLLOW SEQUENCE: Execute numbered sections in order
3. WAIT FOR INPUT: Halt at menus for user selection
4. CHECK CONTINUATION: Only proceed when user selects 'C'
5. SAVE STATE: Update frontmatter before loading next step
6. LOAD NEXT: Read fully and follow next step file

### 6.3 Document State Management

**Frontmatter Schema**:
```yaml
---
stepsCompleted: ['step-01-init', 'step-02-discovery']  # Completed steps
inputDocuments: ['brief.md', 'research.md']           # Source documents
workflowType: 'prd'                                   # Workflow type
classification:                                       # Project classification
  projectType: 'web_app'
  domain: 'fintech'
  complexity: 'high'
  projectContext: 'greenfield'
---
```

### 6.4 Sharded Content Support

BMM supports both **whole documents** and **sharded content**:

- **Whole Document**: Single markdown file (e.g., `prd.md`)
- **Sharded Content**: Folder with `index.md` and multiple content files (e.g., `prd/index.md`, `prd/01-vision.md`, etc.)

**Discovery Priority**:
1. Look for sharded folder first (`prd/index.md`)
2. Fall back to whole document (`prd.md`)

This enables large documents to be split into manageable pieces while maintaining discoverability.

### 6.5 Input Document Discovery Pattern

All workflows follow a consistent discovery pattern:

**Search Locations**:
- `{planning_artifacts}/**`
- `{output_folder}/**`
- `{product_knowledge}/**`
- `docs/**`

**Discovery Process**:
1. Search for relevant patterns (`*brief*.md`, `*research*.md`, etc.)
2. Check for sharded versions first
3. Present findings to user for confirmation
4. Load all confirmed documents
5. Track in frontmatter `inputDocuments`

---

## 7. Integration with Other Modules

### 7.1 BMM and CORE Integration

BMM relies on **BMAD-CORE** for foundational capabilities:

**Core Workflows Used**:
- **Party Mode** (`_bmad/core/workflows/party-mode/workflow.md`): Collaborative multi-agent sessions
- **Advanced Elicitation** (`_bmad/core/workflows/advanced-elicitation/workflow.xml`): Deep requirements extraction
- **Brainstorming** (`_bmad/core/workflows/brainstorming/workflow.md`): Structured ideation

**Core Task System**:
- Workflow XML processing (`_bmad/core/tasks/workflow.xml`)
- Agent activation and menu handling
- Configuration management

### 7.2 BMM and CIS Integration

**CIS (Creative Intelligence Suite)** agents can be invoked from BMM workflows:

**Available CIS Agents** (from default-party.csv):
- **Brainstorming Coach** (Carson): Master facilitation
- **Creative Problem Solver** (Dr. Quinn): Systematic problem-solving
- **Design Thinking Coach** (Maya): Human-centered design
- **Innovation Strategist** (Victor): Business model innovation
- **Presentation Master** (Spike): Visual communication
- **Storyteller** (Sophia): Narrative strategy

**Integration Points**:
- Brainstorming workflow uses CIS agents
- Party Mode can include CIS agents
- Innovation analysis in PRD creation

### 7.3 BMM and TEA Integration

**TEA (Test Engineering Architecture)** provides advanced testing capabilities:

**Relationship**:
- BMM's QA agent provides **simplified test generation**
- TEA module provides **comprehensive test strategy**, risk-based planning, quality gates

**When to Use Each**:
- **BMM QA**: Quick test coverage, small-medium projects, standard patterns
- **TEA**: Enterprise features, comprehensive strategy, risk-based planning

### 7.4 Module Dependencies

```
BMM (Business Methodology Module)
    ↑ depends on
CORE (Foundation)
    - Workflow engine
    - Agent framework
    - Configuration system

BMM integrates with
    ↓
CIS (Creative Intelligence Suite)
    - Brainstorming
    - Innovation
    - Problem-solving

TEA (Test Engineering Architecture)
    - Advanced testing
    - Quality gates
```

---

## 8. Key Files and Directory Structure

### 8.1 Module Structure

```
/Users/muadhsambul/Downloads/arkived/_bmad/bmm/
├── agents/                          # Agent definitions
│   ├── analyst.md
│   ├── architect.md
│   ├── dev.md
│   ├── pm.md
│   ├── qa.md
│   ├── quick-flow-solo-dev.md
│   ├── sm.md
│   ├── tech-writer/
│   │   └── tech-writer.md
│   └── ux-designer.md
├── data/                            # Shared data templates
│   └── project-context-template.md
├── module-help.csv                  # Module command reference
├── teams/                           # Team configurations
│   ├── default-party.csv           # Default agent roster
│   └── team-fullstack.yaml         # Fullstack team bundle
└── workflows/                       # All workflows organized by phase
    ├── 1-analysis/                  # Phase 1: Analysis
    │   ├── create-product-brief/
    │   └── research/
    ├── 2-plan-workflows/            # Phase 2: Planning
    │   ├── create-prd/
    │   └── create-ux-design/
    ├── 3-solutioning/               # Phase 3: Solutioning
    │   ├── check-implementation-readiness/
    │   ├── create-architecture/
    │   └── create-epics-and-stories/
    ├── 4-execution/                 # Phase 4: Implementation
    │   └── (referenced in module-help.csv)
    └── bmad-quick-flow/             # Quick Flow workflows
        ├── quick-spec/
        └── quick-dev/
```

### 8.2 Critical Configuration Files

| File | Purpose |
|------|---------|
| `module-help.csv` | Complete command reference for all BMM capabilities |
| `teams/default-party.csv` | Agent roster with personas and capabilities |
| `data/project-context-template.md` | Template for project brainstorming |
| `workflows/*/data/*.csv` | Classification data (project types, domain complexity) |

---

## 9. Summary: BMM's Unique Value

### What Makes BMM Different

1. **AI-Native Planning**: Documents designed for LLM consumption, not just human reading
2. **Traceability by Design**: Every requirement traces back to user needs and business value
3. **Collaborative AI-Human Workflows**: Agents work as peers, not tools
4. **Domain Intelligence**: Auto-detection of domain complexities and compliance requirements
5. **Structured Flexibility**: Rigid workflow structure with flexible content generation
6. **Quality Gates**: Validation workflows ensure completeness before phase transitions

### When to Use BMM

**Use BMM When**:
- Building significant products or features
- Multiple stakeholders need alignment
- AI agents will implement the work
- Domain complexity requires research
- Compliance or regulatory requirements exist
- Long-term maintenance is expected

**Use Quick Flow Instead When**:
- Small utilities or one-off tasks
- Well-understood patterns
- Rapid prototyping
- Brownfield additions to established codebases

### The Bottom Line

BMM transforms product development from an ad-hoc, error-prone process into a structured, repeatable methodology that leverages AI capabilities while maintaining human strategic oversight. It recognizes that **planning is not overhead - it is the foundation of successful implementation**.

---

*Document generated from comprehensive analysis of the BMAD BMM module*
*All file paths reference `/Users/muadhsambul/Downloads/arkived/_bmad/bmm/`*
