# BMAD BMB (Builder Module) - Comprehensive Analysis

## Executive Summary

The **BMB (Builder Module)** is the implementation and construction layer of the BMAD (Breakthrough Method of Agile-AI Driven-Development) framework. It provides the tools, agents, and workflows necessary to build, edit, and validate BMAD-compliant agents, modules, and workflows. BMB serves as the "meta-layer" that enables users to create their own AI-powered development tools.

**Location:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/`

---

## 1. What BMB Does (Implementation/Building)

### Core Purpose

BMB is the **Builder Module** that transforms ideas into functional BMAD components. It provides:

1. **Agent Creation** - Build AI personas with specific expertise, communication styles, and capabilities
2. **Module Creation** - Construct complete BMAD modules with agents, workflows, and configuration
3. **Workflow Creation** - Design structured, repeatable processes for complex tasks
4. **Validation & Editing** - Quality assurance and maintenance tools for existing components

### Key Capabilities

| Capability | Description |
|------------|-------------|
| Create Agent (CA) | Build new BMAD agents with best practices and compliance |
| Edit Agent (EA) | Modify existing agents while maintaining compliance |
| Validate Agent (VA) | Run compliance checks and offer improvements |
| Create Module Brief (PB) | Create product briefs for module development |
| Create Module (CM) | Build complete BMAD modules with infrastructure |
| Edit Module (EM) | Modify existing modules while maintaining coherence |
| Validate Module (VM) | Run compliance checks on modules |
| Create Workflow (CW) | Build new BMAD workflows with proper structure |
| Edit Workflow (EW) | Modify existing workflows while maintaining integrity |
| Validate Workflow (VW) | Validate workflows against best practices |
| Max Parallel Validate (MV) | Run validation in parallel mode |
| Rework Workflow (RW) | Convert workflows to V6 compliance standards |

### Architecture Philosophy

BMB follows the **Step-File Architecture** pattern:

- **Micro-file Design**: Each step is a self-contained instruction file (80-200 lines)
- **Just-In-Time Loading**: Only the current step file is in memory
- **Sequential Enforcement**: Steps completed in strict order, no skipping
- **State Tracking**: Progress documented in tracking files with frontmatter
- **Mode-Aware Routing**: Separate flows for Create (steps-c/), Edit (steps-e/), Validate (steps-v/)

---

## 2. Every Builder Agent - Their Role

BMB contains three specialized builder agents, each with distinct responsibilities:

### 2.1 Agent Builder (Bond)

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/agents/agent-builder.md`

**Role:** Agent Architecture Specialist + BMAD Compliance Expert

**Identity:** Master agent architect with deep expertise in agent design patterns, persona development, and BMAD Core compliance. Specializes in creating robust, maintainable agents.

**Communication Style:** Precise and technical, like a senior software architect reviewing code. Focuses on structure, compliance, and long-term maintainability.

**Menu Commands:**
- `[MH]` Redisplay Menu Help
- `[CH]` Chat with the Agent
- `[CA]` Create a new BMAD agent
- `[EA]` Edit existing BMAD agents
- `[VA]` Validate existing BMAD agents
- `[PM]` Start Party Mode
- `[DA]` Dismiss Agent

**Key Responsibilities:**
1. Guide users through 8-step agent creation process
2. Ensure BMAD Core compliance in all generated agents
3. Manage the four-field persona system (role, identity, communication_style, principles)
4. Handle sidecar decisions (hasSidecar: true/false)
5. Generate valid agent YAML with proper structure

**Workflow Files:**
- Create: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/agent/workflow-create-agent.md`
- Edit: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/agent/workflow-edit-agent.md`
- Validate: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/agent/workflow-validate-agent.md`

---

### 2.2 Module Builder (Morgan)

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/agents/module-builder.md`

**Role:** Module Architecture Specialist + Full-Stack Systems Designer

**Identity:** Expert module architect with comprehensive knowledge of BMAD Core systems, integration patterns, and end-to-end module development. Specializes in creating cohesive, scalable modules.

**Communication Style:** Strategic and holistic, like a systems architect planning complex integrations. Focuses on modularity, reusability, and system-wide impact.

**Menu Commands:**
- `[MH]` Redisplay Menu Help
- `[CH]` Chat with the Agent
- `[PB]` Create product brief for BMAD module development
- `[CM]` Create a complete BMAD module
- `[EM]` Edit existing BMAD modules
- `[VM]` Run compliance check on BMAD modules
- `[PM]` Start Party Mode
- `[DA]` Dismiss Agent

**Key Responsibilities:**
1. Transform module briefs into complete module structures
2. Create module.yaml with proper configuration
3. Generate agent placeholder/spec files
4. Generate workflow placeholder/spec files
5. Create README.md, TODO.md, and documentation
6. Generate module-help.csv registry

**Module Types Supported:**
- **Standalone**: Independent modules with unique code (e.g., `healthcare-ai`)
- **Extension**: Extends existing modules (e.g., `bmm-security` extends BMM)
- **Global**: Affects entire BMAD framework (use sparingly)

**Workflow Files:**
- Create Brief: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/module/workflow-create-module-brief.md`
- Create Module: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/module/workflow-create-module.md`
- Edit Module: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/module/workflow-edit-module.md`
- Validate Module: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/module/workflow-validate-module.md`

---

### 2.3 Workflow Builder (Wendy)

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/agents/workflow-builder.md`

**Role:** Workflow Architecture Specialist + Process Design Expert

**Identity:** Master workflow architect with expertise in process design, state management, and workflow optimization. Specializes in creating efficient, scalable workflows.

**Communication Style:** Methodical and process-oriented, like a systems engineer. Focuses on flow, efficiency, and error handling.

**Menu Commands:**
- `[MH]` Redisplay Menu Help
- `[CH]` Chat with the Agent
- `[CW]` Create a new BMAD workflow
- `[EW]` Edit existing BMAD workflows
- `[VW]` Run validation check on BMAD workflows
- `[MV]` Run validation in MAX-PARALLEL mode
- `[RW]` Rework a Workflow to V6 compliance
- `[PM]` Start Party Mode
- `[DA]` Dismiss Agent

**Key Responsibilities:**
1. Guide collaborative workflow design process
2. Determine 4 key structural decisions:
   - Document output (produces document or not)
   - Module affiliation (standalone or module-based)
   - Session type (continuable or single-session)
   - Lifecycle support (create-only or tri-modal)
3. Design step sequences and interaction patterns
4. Configure tools and integrations
5. Generate step files following step-file architecture

**Workflow Files:**
- Create: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/workflow/workflow-create-workflow.md`
- Edit: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/workflow/workflow-edit-workflow.md`
- Validate: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/workflow/workflow-validate-workflow.md`
- Max Parallel Validate: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/workflow/workflow-validate-max-parallel-workflow.md`
- Rework: `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/workflow/workflow-rework-workflow.md`

---

## 3. Implementation Workflows

### 3.1 Agent Creation Workflow (8 Steps)

**Entry Point:** `workflow-create-agent.md`

**Step Sequence:**

1. **Step 01 - Brainstorm** (`step-01-brainstorm.md`)
   - Optional creative exploration for agent ideas
   - Can invoke brainstorming workflow from core
   - User can skip if they have a clear concept

2. **Step 02 - Discovery** (`step-02-discovery.md`)
   - Holistic discovery of what user wants to create
   - Captures: Purpose, Goals, Capabilities, Context, Users
   - Creates agent-plan.md as single source of truth
   - One-time discovery - no re-asking in later steps

3. **Step 03 - Sidecar Metadata** (`step-03-sidecar-metadata.md`)
   - Determine if agent needs memory (hasSidecar: true/false)
   - Define all 6 metadata properties:
     - `id`: Technical identifier
     - `name`: Display name
     - `title`: One-line action description
     - `icon`: Emoji or symbol
     - `module`: Module path (project:type:name)
     - `hasSidecar`: Boolean memory decision

4. **Step 04 - Persona** (`step-04-persona.md`)
   - Shape agent personality through four-field system:
     - **Role** (WHAT): Professional identity and expertise
     - **Identity** (WHO): Character, personality, attitude
     - **Communication Style** (HOW): Language patterns, tone, voice
     - **Principles** (WHY): Decision-making framework and values
   - First principle must be the "expert activator"

5. **Step 05 - Commands Menu** (`step-05-commands-menu.md`)
   - Transform capabilities into structured menu commands
   - Define trigger, description, and handler/action for each command
   - Keep final menu YAML under 100 lines
   - No help/exit commands (auto-injected)

6. **Step 06 - Activation** (`step-06-activation.md`)
   - Plan activation behavior through critical_actions
   - Confirm routing to build step based on hasSidecar
   - For sidecar agents: MUST include memory loading actions

7. **Step 07 - Build Agent** (`step-07-build-agent.md`)
   - Generate agent YAML from plan
   - Two build paths:
     - **hasSidecar: false**: Single YAML file (~250 lines max)
     - **hasSidecar: true**: YAML + sidecar folder structure
   - Uses Handlebars template for generation

8. **Step 08 - Celebrate** (`step-08-celebrate.md`)
   - Celebrate completion
   - Provide installation guidance
   - Offer validation option
   - Mark workflow completion in frontmatter

**Edit Mode Steps (steps-e/):**
- E01: Load existing agent
- E02: Discover edits
- E03: Placeholder
- E04: Sidecar metadata review
- E05: Persona review
- E06: Commands menu review
- E07: Activation review
- E08: Edit agent
- E09: Celebrate

**Validate Mode Steps (steps-v/):**
- V01: Load and review
- V02a: Validate metadata
- V02b: Validate persona
- V02c: Validate menu
- V02d: Validate structure
- V02e: Validate sidecar
- V03: Summary report

---

### 3.2 Module Creation Workflow (7 Steps)

**Entry Point:** `workflow-create-module.md`

**Step Sequence:**

1. **Step 01 - Load Brief** (`step-01-load-brief.md`)
   - Load module brief or user write-up
   - Validate completeness
   - Check for existing work (continuation support)
   - Create build tracking file

2. **Step 02 - Structure** (`step-02-structure.md`)
   - Create directory structure based on module type:
     - Standalone: `src/modules/{module_code}/`
     - Extension: `src/modules/{base}/extensions/{folder}/`
     - Global: `src/modules/{code}/` with `global: true`

3. **Step 03 - Config** (`step-03-config.md`)
   - Generate module.yaml with install configuration
   - Add custom variables for user input
   - Support: text, boolean, single-select, multi-select, paths

4. **Step 04 - Agents** (`step-04-agents.md`)
   - Create agent placeholder/spec files
   - One spec per agent from brief
   - Include: metadata, persona outline, planned commands

5. **Step 05 - Workflows** (`step-05-workflows.md`)
   - Create workflow placeholder/spec files
   - One spec per workflow from brief
   - Include: goal, steps outline, inputs/outputs

6. **Step 06 - Docs** (`step-06-docs.md`)
   - Generate README.md with module overview
   - Generate TODO.md with development roadmap
   - Create docs/ folder with:
     - getting-started.md
     - agents.md
     - workflows.md
     - examples.md

7. **Step 07 - Complete** (`step-07-complete.md`)
   - Generate module-help.csv
   - Finalize build tracking
   - Offer validation
   - Provide next steps guidance

---

### 3.3 Workflow Creation Workflow (11 Steps)

**Entry Point:** `workflow-create-workflow.md`

**Step Sequence:**

1. **Step 01 - Discovery** (`step-01-discovery.md`)
   - Understand user's workflow idea through conversation
   - Load workflow examples for inspiration
   - Create initial workflow plan document

2. **Step 02 - Classification** (`step-02-classification.md`)
   - Determine 4 key structural decisions:
     1. Document output (produces document or not)
     2. Module affiliation (standalone or module-based)
     3. Session type (continuable or single-session)
     4. Lifecycle support (create-only or tri-modal)
   - Name the workflow
   - Confirm target location

3. **Step 03 - Requirements** (`step-03-requirements.md`)
   - Gather detailed requirements:
     - Flow structure (linear, looping, branching, repeating)
     - User interaction style (collaborative, autonomous, guided)
     - Input requirements
     - Output specifications
     - Success criteria
     - Instruction style (intent-based, prescriptive, mixed)

4. **Step 04 - Tools** (`step-04-tools.md`)
   - Preview workflow structure
   - Configure available tools:
     - Core BMAD tools (Party Mode, Advanced Elicitation, Brainstorming)
     - LLM features (Web-Browsing, File I/O, Sub-Agents, Sub-Processes)
     - Memory and state management
     - External integrations

5. **Step 05 - Plan Review** (`step-05-plan-review.md`)
   - Review complete plan with user
   - Confirm all decisions
   - Get approval to proceed to design

6. **Step 06 - Design** (`step-06-design.md`)
   - Design workflow structure and step sequence
   - Plan interaction patterns
   - Design data flow
   - Plan file structure
   - Define role and persona for workflow
   - Design validation and error handling
   - Plan subprocess optimization (if applicable)

7. **Step 07 - Foundation** (`step-07-foundation.md`)
   - Create folder structure
   - Generate workflow.md entry point
   - Create main output template(s)

8. **Step 08 - Build Step 01** (`step-08-build-step-01.md`)
   - Build step-01-init.md
   - Build step-01b-continue.md (if continuable)
   - Create supporting files if needed

9. **Step 09 - Build Next Step** (`step-09-build-next-step.md`)
   - Repeatable step for building steps 02 through N
   - Continues until all steps built

10. **Step 10 - Confirmation** (`step-10-confirmation.md`)
    - Review completed workflow
    - Verify against plan
    - Check conversion coverage (if applicable)
    - Offer validation

11. **Step 11 - Completion** (`step-11-completion.md`)
    - Present completion summary
    - Finalize plan document
    - Provide usage guidance
    - Offer next steps

---

## 4. Code Generation Patterns

### 4.1 Agent YAML Generation

**Template:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/agent/templates/agent-template.md`

**Structure (Handlebars-based):**

```yaml
agent:
  metadata:
    id: {{agent_id}}
    name: {{agent_name}}
    title: {{agent_title}}
    icon: {{agent_icon}}
    module: {{agent_module}}
    hasSidecar: {{has_sidecar}}
    {{#if has_sidecar}}
    sidecar-folder: {{sidecar_folder}}
    sidecar-path: '{project-root}/_bmad/_memory/{{sidecar_folder}}/'
    {{/if}}

  persona:
    role: |
      {{persona_role}}

    identity: |
      {{persona_identity}}

    communication_style: |
      {{communication_style}}

    principles:
      {{#each principles}}
      - {{this}}
      {{/each}}

  {{#if has_critical_actions}}
  critical_actions:
    {{#each critical_actions}}
    - '{{{this}}}'
    {{/each}}
  {{/if}}

  {{#if has_prompts}}
  prompts:
    {{#each prompts}}
    - id: {{id}}
      content: |
        {{{content}}}
    {{/each}}
  {{/if}}

  menu:
    {{#each menu_items}}
    - trigger: {{trigger_code}} or fuzzy match on {{trigger_command}}
      {{#if action_is_prompt}}
      action: '#{{action_id}}'
      {{else}}
      action: {{{action_inline}}}
      {{/if}}
      description: '[{{trigger_code}}] {{{description}}}'
    {{/each}}
```

### 4.2 Four-Field Persona System

**Role (WHAT they do):**
- Professional identity and expertise domain
- Capabilities and knowledge areas
- Pure functional definition
- 1-2 sentences, first person

**Identity (WHO they are):**
- Character, personality, attitude
- Background, experience, context
- Pure personality definition
- 2-5 sentences

**Communication Style (HOW they speak):**
- Language patterns, tone, voice
- Formality, verbosity, mannerisms
- Pure expression definition
- 1-2 sentences MAX

**Principles (WHY they act):**
- Decision-making framework
- Core beliefs and values
- First principle = expert activator
- 3-8 bullet points

### 4.3 Step File Generation Pattern

**Standard Step Structure:**

```markdown
---
name: 'step-[N]-[name]'
description: '[what this step does]'

# File References (ONLY variables used in this step!)
nextStepFile: './step-[N+1]-[name].md'
outputFile: '{output_folder}/[output].md'
---

# Step [N]: [Name]

## STEP GOAL:
[Single sentence: what this step accomplishes]

## MANDATORY EXECUTION RULES (READ FIRST):
### Universal Rules:
- NEVER generate content without user input
- CRITICAL: Read complete step file before taking action
- YOU ARE A FACILITATOR, not a content generator

### Role Reinforcement:
- You are a [specific role]
- We engage in collaborative dialogue

### Step-Specific Rules:
- Focus only on [specific task]
- FORBIDDEN to [prohibited action]

## EXECUTION PROTOCOLS:
- [Protocol 1]
- [Protocol 2 - save/update]

## CONTEXT BOUNDARIES:
- Available context: [what's available]
- Focus: [what to focus on]
- Limits: [boundaries]

## MANDATORY SEQUENCE

### 1. [First action]
[Instructions]

### N. Present MENU OPTIONS
Display: "**Select:** [A] [action] [P] [action] [C] Continue"

#### Menu Handling Logic:
- IF A: Execute {task}, then redisplay menu
- IF P: Execute {task}, then redisplay menu
- IF C: Save to {outputFile}, update frontmatter, then load {nextStepFile}

#### EXECUTION RULES:
- ALWAYS halt and wait for user input
- ONLY proceed when user selects 'C'

## SYSTEM SUCCESS/FAILURE METRICS:
### SUCCESS:
[Success criteria]
### SYSTEM FAILURE:
[Failure criteria]
```

### 4.4 Module Structure Generation

**Generated Structure:**

```
{module-code}/
├── module.yaml                 # Module configuration
├── README.md                   # Module documentation
├── TODO.md                     # Development roadmap
├── module-help.csv             # Command registry
├── agents/                     # Agent definitions
│   └── {agent-name}.spec.md    # Agent specifications
├── workflows/                  # Workflow definitions
│   └── {workflow-name}/
│       └── {workflow-name}.spec.md
└── docs/                       # User documentation
    ├── getting-started.md
    ├── agents.md
    ├── workflows.md
    └── examples.md
```

---

## 5. Build and Deployment Processes

### 5.1 Agent Build Process

**Two Build Paths:**

#### Path A: Agent WITHOUT Sidecar (hasSidecar: false)

**Output:** Single YAML file
**Location:** `{bmb_creations_output_folder}/{agent-name}.agent.yaml`

**Constraints:**
- Under ~250 lines
- No sidecar path references
- Stateless, single-purpose
- Each session independent

**Example Agents:** Commit Poet, Snarky Weather Bot, Pun Barista

#### Path B: Agent WITH Sidecar (hasSidecar: true)

**Output:** YAML file + sidecar folder
**Location:**
- YAML: `{bmb_creations_output_folder}/{agent-name}/{agent-name}.agent.yaml`
- Sidecar: `{bmb_creations_output_folder}/{agent-name}/{agent-name}-sidecar/`

**Structure:**
```
{agent-name}/
├── {agent-name}.agent.yaml
└── {agent-name}-sidecar/
    ├── instructions.md
    ├── memories.md
    ├── workflows/
    └── knowledge/
```

**Required critical_actions:**
```yaml
critical_actions:
  - 'Load COMPLETE file {project-root}/_bmad/_memory/{sidecar-folder}/memories.md'
  - 'Load COMPLETE file {project-root}/_bmad/_memory/{sidecar-folder}/instructions.md'
  - 'ONLY read/write files in {project-root}/_bmad/_memory/{sidecar-folder}/'
```

**Example Agents:** Journal Keeper, Novel Buddy, Fitness Coach, Language Tutor

### 5.2 Module Build Process

**Steps:**

1. **Validate Brief**: Ensure all required information present
2. **Create Structure**: Generate folder hierarchy
3. **Generate module.yaml**: Configuration with custom variables
4. **Create Agent Specs**: Placeholder files for each agent
5. **Create Workflow Specs**: Placeholder files for each workflow
6. **Generate Documentation**: README, TODO, docs folder
7. **Generate module-help.csv**: Command registry

**Module Types:**

| Type | Location | Use Case |
|------|----------|----------|
| Standalone | `src/modules/{code}/` | New independent domain |
| Extension | `src/modules/{base}/extensions/{folder}/` | Extend existing module |
| Global | `src/modules/{code}/` with `global: true` | Framework-wide functionality |

### 5.3 Workflow Build Process

**Steps:**

1. **Discovery**: Understand user's workflow idea
2. **Classification**: Determine 4 key structural decisions
3. **Requirements**: Gather detailed requirements
4. **Tools**: Configure available tools
5. **Design**: Design structure and step sequence
6. **Foundation**: Create folder structure and workflow.md
7. **Build Steps**: Generate step files one by one
8. **Confirmation**: Review and validate
9. **Completion**: Finalize and provide guidance

**Folder Structure:**
```
{workflow-name}/
├── workflow.md              # Entry point
├── steps-c/                 # Create flow
│   ├── step-01-init.md
│   ├── step-01b-continue.md (if continuable)
│   └── step-NN-[name].md
├── steps-e/                 # Edit flow (if tri-modal)
├── steps-v/                 # Validate flow (if tri-modal)
├── data/                    # Shared reference
└── templates/               # Output templates
```

---

## 6. How BMB Handles Development Work

### 6.1 Configuration Loading

**All builders load config from:** `{project-root}/_bmad/bmb/config.yaml`

**Required fields:**
- `project_name`
- `user_name`
- `communication_language`
- `document_output_language`
- `bmb_creations_output_folder`

**Activation Step 2 (MANDATORY):**
```
1. Load and read {project-root}/_bmad/bmb/config.yaml NOW
2. Store ALL fields as session variables
3. VERIFY: If config not loaded, STOP and report error
4. DO NOT PROCEED to step 3 until config is loaded
```

### 6.2 Step-File Architecture Discipline

**Core Principles:**

1. **Micro-file Design**: Each step is self-contained (~80-200 lines)
2. **Just-In-Time Loading**: Only current step in memory
3. **Sequential Enforcement**: Steps completed in order, no skipping
4. **State Tracking**: Document progress in tracking files
5. **Mode-Aware Routing**: Create/Edit/Validate have separate step folders

**Critical Rules:**
- NEVER load multiple step files simultaneously
- ALWAYS read entire step file before execution
- NEVER skip steps unless explicitly optional
- ALWAYS save progress and outputs
- ALWAYS halt at menus and wait for input
- NEVER create mental todo lists from future steps

### 6.3 Menu Handling Pattern

**Standard Menu:**
```markdown
### N. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue"

#### Menu Handling Logic:
- IF A: Execute {advancedElicitationTask}, then redisplay menu
- IF P: Execute {partyModeWorkflow}, then redisplay menu
- IF C: Save content, update frontmatter, then load {nextStepFile}
- IF Any other: help user, then redisplay menu

#### EXECUTION RULES:
- ALWAYS halt and wait for user input
- ONLY proceed when user selects 'C'
```

**Menu Codes:**
- `[A]` - Advanced Elicitation (deep exploration)
- `[P]` - Party Mode (creative ideation)
- `[C]` - Continue to next step
- `[MH]` - Menu Help (auto-injected)
- `[CH]` - Chat (auto-injected)
- `[PM]` - Party Mode (auto-injected)
- `[DA]` - Dismiss Agent (auto-injected)

### 6.4 State Management

**Continuable Workflows:**

Track progress in output file frontmatter:
```yaml
---
stepsCompleted: ['step-01-init', 'step-02-gather', 'step-03-design']
lastStep: 'step-03-design'
lastContinued: '2025-01-02'
---
```

Each step appends its name to `stepsCompleted` before loading next.

**Continuation Detection:**
- Step 01 checks for existing output file
- If exists with `stepsCompleted`: Route to step-01b-continue.md
- step-01b reads `stepsCompleted` and routes to correct next step

### 6.5 Variable System

**Standard Variables (Always Available):**
- `{project-root}` - Project root directory
- `{project_name}` - Project name
- `{output_folder}` - Default output location
- `{user_name}` - User's name
- `{communication_language}` - Preferred language
- `{document_output_language}` - Output document language

**Module-Specific Variables:**
- `{bmb_creations_output_folder}` - BMB output location

**Variable Templates:**
- `{value}` - User's input
- `{directory_name}` - Current directory name
- `{variable_name}` - Another variable's value

---

## 7. Integration with Testing

### 7.1 Validation Workflows

Each builder has a corresponding validation workflow:

**Agent Validation:**
- Validates metadata, persona, menu, structure, sidecar
- Generates comprehensive validation report
- Offers to apply fixes

**Module Validation:**
- Checks file structure compliance
- Validates module.yaml correctness
- Checks spec completeness
- Tests installation readiness

**Workflow Validation:**
- Frontmatter validation
- Path violation checks
- Menu validation
- Step type validation
- Output format validation
- Validation design check
- Instruction style check
- Collaborative experience check
- Subprocess optimization check
- Cohesive review
- Report generation

### 7.2 Max Parallel Validation

**Purpose:** Run validation checks in parallel for performance

**Requirements:**
- Tool that supports Parallel Sub-Processes
- Uses subprocess optimization patterns

**Pattern Types:**
1. **Pattern 1 (Grep/Regex)**: Search across many files
2. **Pattern 2 (Deep Analysis)**: Analyze multiple files for prose/logic/quality
3. **Pattern 3 (Data Operations)**: Load large reference data
4. **Pattern 4 (Parallel Execution)**: Run independent checks in parallel

### 7.3 Quality Assurance Patterns

**Agent Validation Checklist:**
- [ ] Valid YAML syntax
- [ ] Metadata: id, name, title, icon, module
- [ ] Persona: role, identity, communication_style, principles
- [ ] Unique prompt IDs
- [ ] Menu triggers: `XX or fuzzy match on command`
- [ ] Menu descriptions: `[XX] Description`
- [ ] No reserved codes (MH, CH, PM, DA)
- [ ] File named `{agent-name}.agent.yaml`
- [ ] hasSidecar: false → Under ~250 lines, no sidecar paths
- [ ] hasSidecar: true → ALL paths use `{project-root}/_bmad/_memory/{sidecar-folder}/`

**Workflow Validation Checklist:**
- [ ] File < 200 lines (250 max)
- [ ] `name` and `description` in frontmatter
- [ ] All frontmatter variables are used
- [ ] File references use `{variable}` format
- [ ] Handler section follows menu display
- [ ] "Halt and wait" in execution rules
- [ ] C option saves and loads next step
- [ ] stepsCompleted appended (if continuable)

---

## 8. Data Files and Standards

### 8.1 Agent Data Files

**Location:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/agent/data/`

| File | Purpose |
|------|---------|
| `agent-architecture.md` | YAML schema, hasSidecar decision matrix, validation checklist |
| `agent-compilation.md` | Assembly rules for YAML generation |
| `agent-menu-patterns.md` | Menu structure, handlers, validation rules |
| `agent-metadata.md` | Metadata property definitions and rules |
| `agent-validation.md` | Validation criteria and procedures |
| `brainstorm-context.md` | Context for brainstorming workflow |
| `communication-presets.csv` | Style options and templates |
| `critical-actions.md` | Activation behavior patterns |
| `persona-properties.md` | Four-field persona system documentation |
| `principles-crafting.md` | Principles composition guidance |
| `understanding-agent-types.md` | Sidecar decision criteria |

### 8.2 Module Data Files

**Location:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/module/data/`

| File | Purpose |
|------|---------|
| `agent-architecture.md` | Agent structure reference |
| `agent-spec-template.md` | Template for agent spec files |
| `module-standards.md` | Module types, structure, naming conventions |
| `module-yaml-conventions.md` | Variable system, templates, best practices |

### 8.3 Workflow Data Files

**Location:** `/Users/muadhsambul/Downloads/arkived/_bmad/bmb/workflows/workflow/data/`

| File | Purpose |
|------|---------|
| `architecture.md` | Core structural patterns |
| `common-workflow-tools.csv` | Available tools and descriptions |
| `csv-data-file-standards.md` | CSV file conventions |
| `frontmatter-standards.md` | Variables, paths, frontmatter rules |
| `input-discovery-standards.md` | Document discovery patterns |
| `intent-vs-prescriptive-spectrum.md` | Instruction style guidance |
| `menu-handling-standards.md` | Menu patterns and handler rules |
| `output-format-standards.md` | Document output patterns |
| `step-file-rules.md` | Step structure and compliance |
| `step-type-patterns.md` | Templates for different step types |
| `subprocess-optimization-patterns.md` | Parallel execution patterns |
| `trimodal-workflow-structure.md` | Create/Edit/Validate structure |

---

## 9. Key Design Decisions

### 9.1 Why Step-File Architecture?

1. **Progressive Disclosure**: Users only know about current step
2. **LLM Focus**: Prevents distraction by future steps
3. **Just-In-Time Loading**: Reduces context window usage
4. **Sequential Enforcement**: Ensures proper order of operations
5. **State Persistence**: Can resume long workflows across sessions

### 9.2 Why Tri-Modal Structure?

1. **Separation of Concerns**: Create, Edit, Validate are distinct operations
2. **Code Reuse**: All modes share `/data/` folder
3. **Clear Routing**: No confusion about which step to load
4. **Standalone Validation**: Can validate without creating
5. **Conversion Support**: Edit can route to Create for non-compliant input

### 9.3 Why Four-Field Persona?

1. **Separation of Concerns**: Role, Identity, Communication Style, Principles are distinct
2. **No Overlap**: Each field has one specific purpose
3. **Clarity**: Easy to understand what each field contributes
4. **Consistency**: All agents follow same structure
5. **Quality**: Forces thoughtful persona development

### 9.4 Why hasSidecar Boolean?

1. **Simplicity**: Clear distinction between simple and complex agents
2. **Performance**: Stateless agents are lighter
3. **Scalability**: Sidecar agents can grow with user needs
4. **Flexibility**: Can add sidecar later via edit workflow
5. **Clarity**: User understands memory implications upfront

---

## 10. Usage Examples

### Creating a New Agent

```
User: @agent-builder
Agent Builder: Hello {user_name}! I am Bond, your Agent Building Expert.

Menu:
[CA] Create a new BMAD agent
[EA] Edit existing BMAD agents
[VA] Validate existing BMAD agents
...

User: CA
Agent Builder: Let's create your agent! Would you like to brainstorm first?
...
(Follows 8-step process)
...
Agent Builder: Your agent is complete! Located at: {output_folder}/{agent-name}.agent.yaml
```

### Creating a New Module

```
User: @module-builder
Module Builder: Hello {user_name}! I am Morgan, your Module Creation Master.

User: CM
Module Builder: Where is your module brief?
...
(Follows 7-step process)
...
Module Builder: Module structure complete! Next: Build agents and workflows using their respective builders.
```

### Creating a New Workflow

```
User: @workflow-builder
Workflow Builder: Hello {user_name}! I am Wendy, your Workflow Building Master.

User: CW
Workflow Builder: Creating a new workflow. How would you like to start?
[F]rom scratch
[C]onvert existing

User: F
Workflow Builder: Tell me about your idea...
...
(Follows 11-step process)
...
Workflow Builder: Workflow complete! Located at: {output_folder}/workflows/{name}/workflow.md
```

---

## 11. Summary

The BMB (Builder Module) is the cornerstone of the BMAD framework's extensibility. It provides:

1. **Three Specialized Builders**: Agent Builder, Module Builder, Workflow Builder
2. **Comprehensive Workflows**: Create, Edit, Validate for each component type
3. **Step-File Architecture**: Disciplined, progressive approach to complex tasks
4. **Code Generation**: Templates and patterns for consistent output
5. **Quality Assurance**: Validation workflows ensure compliance
6. **Extensibility**: Users can create their own modules, agents, and workflows

BMB embodies the BMAD philosophy: **structured collaboration between human creativity and AI capability**. It transforms the abstract (ideas) into the concrete (working components) through guided, step-by-step processes.

The module demonstrates sophisticated software architecture patterns:
- Progressive disclosure for user experience
- Just-in-time loading for performance
- State management for long-running workflows
- Validation and quality assurance
- Extensible template system

Through BMB, BMAD achieves its goal of being a **self-extending framework** where users become creators, building their own AI-powered development tools.
