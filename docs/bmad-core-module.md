# BMAD CORE Module: Comprehensive Analysis

## Executive Summary

The BMAD CORE module is the foundational layer of the Business Methodology for AI Development (BMAD) framework. It provides the essential infrastructure, base agents, core workflows, and utility tasks that all other BMAD modules build upon. CORE establishes the architectural patterns, configuration systems, and integration mechanisms that enable seamless multi-agent collaboration within Claude Code.

**Version:** 6.0.3
**Location:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/`
**Module Type:** Foundation/Required
**Dependencies:** None (base module)

---

## Table of Contents

1. [What CORE Does: Foundation Layer](#1-what-core-does-foundation-layer)
2. [Agent System](#2-agent-system)
3. [Workflow System](#3-workflow-system)
4. [Task System](#4-task-system)
5. [Configuration System](#5-configuration-system)
6. [Party Mode Implementation](#6-party-mode-implementation)
7. [Integration with Claude Code](#7-integration-with-claude-code)
8. [How CORE Provides Base for Other Modules](#8-how-core-provides-base-for-other-modules)
9. [File Structure and Organization](#9-file-structure-and-organization)

---

## 1. What CORE Does: Foundation Layer

### 1.1 Core Purpose

The CORE module serves as the **runtime foundation** for the entire BMAD ecosystem. It provides:

- **Agent Infrastructure**: Base agent definitions, activation protocols, and persona management
- **Workflow Engine**: The execution framework for all BMAD workflows
- **Configuration Management**: Centralized settings and variable resolution
- **Utility Tasks**: Common operations like document indexing, sharding, and editorial review
- **Multi-Agent Orchestration**: Party Mode for collaborative agent discussions
- **Integration Layer**: Seamless connection with Claude Code's native capabilities

### 1.2 Architectural Philosophy

CORE follows several key design principles:

1. **Micro-File Architecture**: Workflows are broken into small, focused step files that are loaded on-demand
2. **Configuration-Driven**: All user-specific settings (name, language, output locations) are externalized to config.yaml
3. **Runtime Resource Loading**: Resources (agents, techniques, methods) are loaded only when needed, never pre-loaded
4. **Frontmatter State Tracking**: Document state is persisted in YAML frontmatter for continuation support
5. **Intent-Driven Planning**: Workflows adapt organically to context rather than following rigid scripts

### 1.3 Key Capabilities

| Capability | Description | Files Involved |
|------------|-------------|----------------|
| Agent Management | Load, activate, and manage BMAD agent personas | `agents/bmad-master.md`, `module-help.csv` |
| Workflow Execution | Execute complex multi-step workflows with state tracking | `workflows/*/workflow.md`, `tasks/workflow.xml` |
| Brainstorming Facilitation | Interactive ideation using 50+ creativity techniques | `workflows/brainstorming/` |
| Multi-Agent Discussions | Orchestrate conversations between multiple agents | `workflows/party-mode/` |
| Content Enhancement | Advanced elicitation methods for refining output | `workflows/advanced-elicitation/` |
| Document Management | Index, shard, and review documents | `tasks/index-docs.xml`, `tasks/shard-doc.xml`, `tasks/editorial-*.xml` |
| Quality Assurance | Adversarial review and editorial review | `tasks/review-adversarial-general.xml` |

---

## 2. Agent System

### 2.1 Agent Architecture

BMAD agents are sophisticated persona definitions that Claude Code embodies during execution. The CORE module defines the master agent and the agent activation framework.

### 2.2 BMAD Master Agent

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/agents/bmad-master.md`

The BMAD Master Agent is the primary execution engine and orchestrator. It serves three critical roles:

1. **Master Task Executor**: Directly executes tasks and workflows
2. **Knowledge Custodian**: Maintains comprehensive knowledge of all BMAD resources
3. **Workflow Orchestrator**: Routes to appropriate workflows and agents

#### Agent Definition Structure

```yaml
---
name: "bmad master"
description: "BMad Master Executor, Knowledge Custodian, and Workflow Orchestrator"
---
```

The agent definition uses an XML-based configuration embedded in markdown:

```xml
<agent id="bmad-master.agent.yaml" name="BMad Master"
       title="BMad Master Executor, Knowledge Custodian, and Workflow Orchestrator"
       icon="🧙"
       capabilities="runtime resource management, workflow orchestration, task execution, knowledge custodian">
```

#### Activation Protocol (Mandatory Steps)

The activation protocol is **critical and mandatory**. The LLM MUST follow these steps exactly:

1. **Load Persona**: Load persona from the current agent file
2. **Load Configuration** (CRITICAL):
   - Load `{project-root}/_bmad/core/config.yaml` IMMEDIATELY
   - Store ALL fields as session variables: `{user_name}`, `{communication_language}`, `{output_folder}`
   - VERIFY: If config not loaded, STOP and report error
   - DO NOT PROCEED to step 3 until config is successfully loaded
3. **Remember User**: Store user's name from config
4. **Show Greeting**: Display menu items from the menu section
5. **Help Information**: Inform user about `/bmad-help` command availability
6. **Wait for Input**: STOP and WAIT - do NOT execute menu items automatically
7. **Process Input**: Number → process menu item[n] | Text → case-insensitive substring match
8. **Execute Handler**: Check menu-handlers section and follow corresponding instructions

#### Persona Definition

```xml
<persona>
  <role>Master Task Executor + BMad Expert + Guiding Facilitator Orchestrator</role>
  <identity>Master-level expert in the BMAD Core Platform and all loaded modules with comprehensive knowledge of all resources, tasks, and workflows. Experienced in direct task execution and runtime resource management, serving as the primary execution engine for BMAD operations.</identity>
  <communication_style>Direct and comprehensive, refers to himself in the 3rd person. Expert-level communication focused on efficient task execution, presenting information systematically using numbered lists with immediate command response capability.</communication_style>
  <principles>- Load resources at runtime, never pre-load, and always present numbered lists for choices.</principles>
</persona>
```

#### Menu System

The BMAD Master provides an interactive menu:

| Command | Code | Description |
|---------|------|-------------|
| MH | Menu Help | Redisplay Menu Help |
| CH | Chat | Chat with the Agent about anything |
| LT | List Tasks | List all available tasks from task-manifest.csv |
| LW | List Workflows | List all workflows from workflow-manifest.csv |
| PM | Party Mode | Start Party Mode multi-agent discussion |
| DA | Dismiss Agent | Exit the agent |

Menu handlers support:
- `action="#id"`: Find prompt with id and follow its content
- `action="text"`: Follow the text directly as inline instruction
- `exec`: Execute a workflow file

#### Rules Enforcement

- ALWAYS communicate in `{communication_language}` unless contradicted by communication_style
- Stay in character until exit selected
- Display Menu items as the item dictates and in the order given
- Load files ONLY when executing a user chosen workflow or when required by command

### 2.3 Agent Manifest Integration

Agents are registered in `/Users/muadhsambul/Downloads/arkived/_bmad/_config/agent-manifest.csv` (referenced by CORE). The manifest contains:

- **name**: Agent identifier
- **displayName**: Persona name for conversations
- **title**: Formal position
- **icon**: Visual identifier emoji
- **role**: Capabilities summary
- **identity**: Background/expertise
- **communicationStyle**: How they communicate
- **principles**: Decision-making philosophy
- **module**: Source module
- **path**: File location

---

## 3. Workflow System

### 3.1 Workflow Architecture

CORE defines the workflow execution framework used by all BMAD modules. Workflows follow a micro-file architecture with sequential step execution.

### 3.2 Core Workflow Files

#### 3.2.1 Workflow Execution Engine

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/tasks/workflow.xml`

This is the **master workflow execution engine** that all workflows use. It defines:

**Workflow Rules:**
1. Steps execute in exact numerical order (1, 2, 3...)
2. Optional steps: Ask user unless #yolo mode active
3. Template-output tags: Save content, discuss with user, NEVER proceed until user indicates to proceed (unless YOLO mode)

**Execution Flow:**

**Step 1: Load and Initialize Workflow**
- Substep 1a: Load Configuration and Resolve Variables
  - Load workflow.yaml from provided path
  - Load external config from config_source path
  - Resolve all `{config_source}:` references
  - Resolve system variables (`{date}`, `{project-root}`, `{installed_path}`)
  - Ask user for input of any unknown variables

- Substep 1b: Load Required Components
  - Read COMPLETE instructions file (mandatory)
  - Read template if path provided
  - Note validation path for later loading
  - Mark as action-workflow or template-workflow

- Substep 1c: Initialize Output (if template-workflow)
  - Resolve default_output_file path
  - Create output directory
  - Write template to output file

**Step 2: Process Each Instruction Step in Order**
- Substep 2a: Handle Step Attributes
  - Check if optional="true" and NOT #yolo → Ask user
  - Check if="condition" → Evaluate condition
  - Check for-each="item" → Repeat for each item
  - Check repeat="n" → Repeat n times

- Substep 2b: Execute Step Content
  - Process step instructions
  - Replace {{variables}} with values
  - Execute XML tags:
    - `<action>`: Perform the action
    - `<check if="condition">`: Conditional block
    - `<ask>`: Prompt user and WAIT
    - `<invoke-workflow>`: Execute another workflow
    - `<invoke-task>`: Execute specified task
    - `<invoke-protocol>`: Execute reusable protocol
    - `<goto step="x">`: Jump to step

- Substep 2c: Handle template-output Tags
  - Generate content for section
  - Save to file (Write first time, Edit subsequent)
  - Display generated content
  - Present options: [a] Advanced Elicitation, [c] Continue, [p] Party-Mode, [y] YOLO
  - WAIT for response before proceeding

- Substep 2d: Step Completion
  - If no special tags and NOT #yolo: Ask "Continue to next step? (y/n/edit)"

**Step 3: Completion**
- Confirm document saved
- Report workflow completion

**Supported Tags:**

| Category | Tag | Purpose |
|----------|-----|---------|
| Structural | `step n="X" goal="..."` | Define step with number and goal |
| Structural | `optional="true"` | Step can be skipped |
| Structural | `if="condition"` | Conditional execution |
| Structural | `for-each="collection"` | Iterate over items |
| Structural | `repeat="n"` | Repeat n times |
| Execution | `action` | Required action |
| Execution | `check if="condition"` | Conditional block |
| Execution | `ask` | Get user input (ALWAYS wait) |
| Execution | `goto` | Jump to step |
| Execution | `invoke-workflow` | Call another workflow |
| Execution | `invoke-task` | Call a task |
| Execution | `invoke-protocol` | Execute reusable protocol |
| Output | `template-output` | Save content checkpoint |
| Output | `critical` | Cannot be skipped |

**Execution Modes:**
- **normal**: Full user interaction, confirmation at EVERY step
- **yolo**: Skip confirmations, minimize prompts, auto-produce workflow output

**Protocols:**

The workflow engine includes reusable protocols:

**discover_inputs Protocol:**
- Parses input_file_patterns from workflow.yaml
- Supports three load strategies:
  1. **FULL_LOAD**: Load ALL files in sharded directory
  2. **SELECTIVE_LOAD**: Load specific shard using template variable
  3. **INDEX_GUIDED**: Load index.md, analyze structure, intelligently load relevant docs

---

## 4. Task System

CORE provides a library of utility tasks for common operations.

### 4.1 Task Manifest

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/module-help.csv`

| Task | Code | Command | Description |
|------|------|---------|-------------|
| Brainstorming | BSP | `bmad-brainstorming` | Generate diverse ideas through interactive techniques |
| Party Mode | PM | `bmad-party-mode` | Orchestrate multi-agent discussions |
| BMAD Help | BH | `bmad-help` | Get unstuck by showing workflow steps |
| Index Docs | ID | `bmad-index-docs` | Create lightweight index for quick LLM scanning |
| Shard Document | SD | `bmad-shard-doc` | Split large documents into smaller files |
| Editorial Review - Prose | EP | `bmad-editorial-review-prose` | Review prose for clarity, tone, communication |
| Editorial Review - Structure | ES | `bmad-editorial-review-structure` | Propose cuts, reorganization, simplification |
| Adversarial Review | AR | `bmad-review-adversarial-general` | Review content critically to find issues |

### 4.2 Individual Task Definitions

#### 4.2.1 Index Docs Task

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/tasks/index-docs.xml`

Generates or updates an index.md to reference all docs in a folder.

**Flow:**
1. Scan Directory - List all files and subdirectories
2. Group Content - Organize by type, purpose, or subdirectory
3. Generate Descriptions - Read each file, create 3-10 word descriptions
4. Create/Update Index - Write index.md with organized listings

**Output Format:**
```markdown
# Directory Index

## Files
- **[filename.ext](./filename.ext)** - Brief description

## Subdirectories
### subfolder/
- **[file1.ext](./subfolder/file1.ext)** - Brief description
```

#### 4.2.2 Shard Document Task

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/tasks/shard-doc.xml`

Splits large markdown documents into smaller files using `@kayvan/markdown-tree-parser`.

**Flow:**
1. Get Source Document - Ask for path, verify exists and is markdown
2. Get Destination Folder - Default to same location as source, folder named after file
3. Execute Sharding - Run `npx @kayvan/markdown-tree-parser explode [source] [dest]`
4. Verify Output - Check files created, verify index.md exists
5. Report Completion - Show source, destination, file count
6. Handle Original Document - Options: [d] Delete, [m] Move to archive, [k] Keep (with warning)

**Critical Note:** Keeping both original and sharded versions defeats the purpose and can cause confusion with discover_inputs protocol.

#### 4.2.3 Editorial Review - Prose

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/tasks/editorial-review-prose.xml`

Clinical copy-editor for communication issues.

**Inputs:**
- `content` (required): Text to review
- `style_guide` (optional): Project-specific style guide (overrides defaults)
- `reader_type` (optional): 'humans' (default) or 'llm'

**Principles:**
- Minimal intervention: Smallest fix that achieves clarity
- Preserve structure: Fix prose within existing structure
- Skip code/markup: Detect and skip code blocks, frontmatter
- CONTENT IS SACROSANCT: Never challenge ideas, only clarify expression
- STYLE GUIDE OVERRIDE: Style guide wins over all generic principles

**Output Format:**
```markdown
| Original Text | Revised Text | Changes |
|---------------|--------------|---------|
| The exact original | The suggested revision | Brief explanation |
```

#### 4.2.4 Editorial Review - Structure

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/tasks/editorial-review-structure.xml`

Structural editor for proposing cuts, reorganization, and simplification.

**Inputs:**
- `content` (required): Document to review
- `style_guide` (optional): Project-specific style guide
- `purpose` (optional): Document's intended purpose
- `target_audience` (optional): Who reads this
- `reader_type` (optional): 'humans' or 'llm'
- `length_target` (optional): Target reduction (e.g., '30% shorter')

**Structure Models:**
1. **Tutorial/Guide (Linear)**: Prerequisites → Sequence → Goal-oriented
2. **Reference/Database**: Random Access, MECE, Consistent Schema
3. **Explanation (Conceptual)**: Abstract to Concrete, Scaffolding
4. **Prompt/Task Definition (Functional)**: Meta-first, Separation of Concerns, Step-by-step
5. **Strategic/Context (Pyramid)**: Top-down, Grouping, MECE, Evidence

**Recommendation Categories:**
- CUT: Remove entirely
- MERGE: Combine sections
- MOVE: Reorder
- CONDENSE: Shorten significantly
- QUESTION: Needs author decision
- PRESERVE: Explicitly keep

#### 4.2.5 Adversarial Review (General)

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/tasks/review-adversarial-general.xml`

Cynical review to find issues and weaknesses.

**LLM Persona:**
- Cynical, jaded reviewer with zero patience for sloppy work
- Content submitted by a clueless weasel
- Expect to find problems
- Be skeptical of everything
- Look for what's missing, not just what's wrong
- Precise, professional tone - no profanity or personal attacks

**Flow:**
1. Receive Content - Load from input or context
2. Adversarial Analysis - Review with extreme skepticism, assume problems exist
3. Present Findings - Output as Markdown list

**Halt Conditions:**
- HALT if zero findings (suspicious, re-analyze)
- HALT if content is empty

---

## 5. Configuration System

### 5.1 Core Configuration File

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/config.yaml`

```yaml
# CORE Module Configuration
# Generated by BMAD installer
# Version: 6.0.3
# Date: 2026-02-26T17:49:09.406Z

user_name: Muadh
communication_language: English
document_output_language: English
output_folder: "{project-root}/_bmad-output"
```

### 5.2 Configuration Variables

| Variable | Purpose | Example |
|----------|---------|---------|
| `user_name` | Personalizes agent interactions | "Muadh" |
| `communication_language` | Language for agent communication | "English" |
| `document_output_language` | Language for generated documents | "English" |
| `output_folder` | Base path for all outputs | `{project-root}/_bmad-output` |

### 5.3 Variable Resolution

CORE uses a hierarchical variable resolution system:

1. **System Variables**: `{date}` (auto-generated), `{project-root}` (resolved from context)
2. **Config Variables**: Loaded from config.yaml, referenced as `{variable_name}`
3. **Workflow Variables**: Defined in workflow.yaml, resolved at runtime
4. **Template Variables**: `{{variable}}` syntax for user input substitution

### 5.4 Path Resolution

All paths use `{project-root}` as the base:
- `{project-root}/_bmad/core/` - CORE module location
- `{project-root}/_bmad/_config/` - Configuration and manifests
- `{output_folder}/` - Resolved from config, base for all outputs

---

## 6. Party Mode Implementation

Party Mode is one of CORE's most distinctive features - a multi-agent conversation orchestration system.

### 6.1 Party Mode Workflow

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/workflows/party-mode/workflow.md`

**Goal:** Orchestrate group discussions between all installed BMAD agents

**Architecture:**
- Uses micro-file architecture with sequential conversation orchestration
- Step 01: Load agent manifest and initialize party mode
- Step 02: Orchestrate ongoing multi-agent discussion
- Step 03: Handle graceful party mode exit
- Conversation state tracked in frontmatter
- Agent personalities maintained through merged manifest data

### 6.2 Step 1: Agent Loading

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/workflows/party-mode/steps/step-01-agent-loading.md`

**Execution:**
1. Load Agent Manifest from `{project-root}/_bmad/_config/agent-manifest.csv`
2. Extract Agent Data points: name, displayName, title, icon, role, identity, communicationStyle, principles, module, path
3. Build Agent Roster with merged personalities
4. Party Mode Activation with enthusiastic introduction
5. Present Continue option [C]
6. On Continue: Update frontmatter, load step-02

**Frontmatter Tracking:**
```yaml
---
stepsCompleted: [1]
workflowType: 'party-mode'
user_name: '{{user_name}}'
date: '{{date}}'
agents_loaded: true
party_active: true
exit_triggers: ['*exit', 'goodbye', 'end party', 'quit']
---
```

### 6.3 Step 2: Discussion Orchestration

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/workflows/party-mode/steps/step-02-discussion-orchestration.md`

**User Input Analysis:**
- Analyze message for domain and expertise requirements
- Identify which agents would naturally contribute
- Consider conversation context and previous contributions
- Select 2-3 most relevant agents

**Intelligent Agent Selection:**
- **Primary Agent**: Best expertise match for core topic
- **Secondary Agent**: Complementary perspective
- **Tertiary Agent**: Cross-domain insight or devil's advocate

**Priority Rules:**
- If user names specific agent → Prioritize that agent + 1-2 complementary
- Rotate agent participation over time
- Balance expertise domains

**In-Character Response Generation:**
```
[Icon Emoji] **[Agent Name]**: [Authentic in-character response]
```

**Natural Cross-Talk Integration:**
- Agents reference each other by name
- Build on previous points
- Respectful disagreements allowed
- Follow-up questions between agents

**Question Handling Protocol:**
- **Direct Questions to User**: End round immediately, highlight question, wait for response
- **Inter-Agent Questions**: Allow natural back-and-forth within same round
- **Rhetorical Questions**: Thinking-aloud without pausing flow

**Exit Conditions:**
- Automatic triggers: `*exit`, `goodbye`, `end party`, `quit`
- Natural conclusion: Ask user if they want to continue or exit

### 6.4 Step 3: Graceful Exit

**File:** `/Users/muadhsambul/Downloads/arkived/_bmad/core/workflows/party-mode/steps/step-03-graceful-exit.md`

**Exit Sequence:**
1. Acknowledge Session Conclusion
2. Generate Agent Farewells (2-3 most engaged agents)
3. Session Highlight Summary
4. Final Party Mode Conclusion
5. Complete Workflow Exit with frontmatter update

**Farewell Selection Criteria:**
- Agents who made significant contributions
- Agents with distinct personalities
- Mix of expertise domains
- Agents who can reference session highlights

**Return Protocol:**
If invoked from parent workflow:
1. Identify parent workflow step that invoked party mode
2. Re-read that file to restore context
3. Resume from where parent directed invocation
4. Present any menus/options parent requires

---

## 7. Integration with Claude Code

### 7.1 Native Integration Points

CORE integrates with Claude Code through several mechanisms:

1. **Agent Commands**: Workflows are invoked via slash commands (e.g., `/bmad-brainstorming`)
2. **Skill Router**: The `skill-router` agent (per CLAUDE.md) routes tasks to appropriate BMAD workflows
3. **Memory System**: BMAD outputs are stored in `{output_folder}` for persistence across sessions
4. **Context7 Integration**: Documentation lookup for APIs used in BMAD workflows

### 7.2 Claude Code Configuration

Per the user's CLAUDE.md, BMAD integrates with:

- **Skills First**: Tasks routed through BMAD skills/plugins
- **Memory Always**: BMAD outputs captured to `.claude/memory/`
- **Context7 for APIs**: Auto-query for configured libraries
- **Workflow Automation**: Auto-triggered workflows based on user phrases

### 7.3 Auto-Triggered Workflows

Per CLAUDE.md configuration:

| User Says | Auto-Triggers |
|-----------|---------------|
| "Create component" | `@frontend-design` |
| "Plan feature" | `/workflows:plan` |
| "Refactor code" | `@code-simplifier` |
| "Fix all X" | `@mass-change` |
| "Review code" | `/workflows:review` |
| "Optimize" | `@performance-guardian` |
| "Brainstorm" | BMAD Brainstorming workflow |

### 7.4 Command Interface

BMAD commands follow the pattern:
- `/bmad-{workflow-name}` - Execute specific workflow
- `/bmad-help` - Get help on next steps
- `/bmad-party-mode` - Start Party Mode

---

## 8. How CORE Provides Base for Other Modules

### 8.1 Module Extension Pattern

Other BMAD modules (BMM, CIS, BMB, TEA) build on CORE by:

1. **Adding Module-Specific Agents**: Defined in `{module}/agents/`, registered in agent-manifest.csv
2. **Adding Module Workflows**: Defined in `{module}/workflows/`, registered in workflow-manifest.csv
3. **Adding Module Tasks**: Defined in `{module}/tasks/`, registered in task-manifest.csv
4. **Extending Configuration**: Module-specific config.yaml with additional variables

### 8.2 Shared Infrastructure

| CORE Component | Used By Other Modules For |
|----------------|---------------------------|
| `workflow.xml` | Executing all module workflows |
| `config.yaml` pattern | Configuration structure and variable resolution |
| Agent activation protocol | All agent loading and persona management |
| Frontmatter state tracking | Workflow continuation across sessions |
| Party Mode | Multi-agent discussions within module contexts |
| Advanced Elicitation | Content refinement in document workflows |
| Editorial Review | Quality assurance for module outputs |

### 8.3 Manifest System

All modules register their components in shared manifests:

**Location:** `{project-root}/_bmad/_config/`

- `agent-manifest.csv` - All agents from all modules
- `workflow-manifest.csv` - All workflows from all modules
- `task-manifest.csv` - All tasks from all modules
- `bmad-help.csv` - Unified help catalog

### 8.4 Configuration Inheritance

Module config.yaml files extend CORE's base configuration:

```yaml
# Module config extends CORE config
user_name: Muadh  # Inherited from CORE
communication_language: English  # Inherited from CORE
output_folder: "{project-root}/_bmad-output"  # Inherited from CORE

# Module-specific additions
module_name: "BMM"
module_version: "1.0.0"
project_knowledge: "{output_folder}/project-knowledge/"
```

---

## 9. File Structure and Organization

### 9.1 Complete CORE File Tree

```
/Users/muadhsambul/Downloads/arkived/_bmad/core/
├── config.yaml                           # Module configuration
├── module-help.csv                       # Task manifest for CORE
├── agents/
│   └── bmad-master.md                    # Master agent definition
├── tasks/
│   ├── help.md                           # BMAD Help task
│   ├── index-docs.xml                    # Index generation task
│   ├── shard-doc.xml                     # Document sharding task
│   ├── editorial-review-prose.xml        # Prose editing task
│   ├── editorial-review-structure.xml    # Structure editing task
│   ├── review-adversarial-general.xml    # Critical review task
│   └── workflow.xml                      # Workflow execution engine
└── workflows/
    ├── brainstorming/
    │   ├── workflow.md                   # Brainstorming workflow main
    │   ├── brain-methods.csv             # 50+ creativity techniques
    │   ├── template.md                   # Session output template
    │   └── steps/
    │       ├── step-01-session-setup.md
    │       ├── step-01b-continue.md
    │       ├── step-02a-user-selected.md
    │       ├── step-02b-ai-recommended.md
    │       ├── step-02c-random-selection.md
    │       ├── step-02d-progressive-flow.md
    │       ├── step-03-technique-execution.md
    │       └── step-04-idea-organization.md
    ├── party-mode/
    │   ├── workflow.md                   # Party Mode workflow main
    │   └── steps/
    │       ├── step-01-agent-loading.md
    │       ├── step-02-discussion-orchestration.md
    │       └── step-03-graceful-exit.md
    └── advanced-elicitation/
        ├── workflow.xml                  # Advanced elicitation task
        └── methods.csv                   # 50 elicitation methods
```

### 9.2 File Purposes Summary

| File | Purpose | Type |
|------|---------|------|
| `config.yaml` | User settings and paths | Configuration |
| `module-help.csv` | Task registry for CORE | Manifest |
| `bmad-master.md` | Primary agent definition | Agent |
| `help.md` | Help system implementation | Task |
| `index-docs.xml` | Directory indexing | Task |
| `shard-doc.xml` | Document splitting | Task |
| `editorial-review-*.xml` | Content quality review | Task |
| `review-adversarial-general.xml` | Critical analysis | Task |
| `workflow.xml` | Workflow execution engine | Task |
| `brainstorming/workflow.md` | Ideation workflow | Workflow |
| `brain-methods.csv` | Creativity techniques database | Data |
| `party-mode/workflow.md` | Multi-agent discussions | Workflow |
| `advanced-elicitation/workflow.xml` | Content refinement | Workflow |
| `methods.csv` | Elicitation methods database | Data |

---

## Appendix A: Brainstorming Techniques Database

The brainstorming workflow includes 50+ techniques across 10 categories:

### Categories and Technique Counts

| Category | Count | Description |
|----------|-------|-------------|
| collaborative | 6 | Group dynamics and team ideation |
| creative | 10 | Innovative approaches for breakthrough thinking |
| deep | 7 | Analytical methods for root cause discovery |
| introspective_delight | 5 | Inner wisdom and authentic exploration |
| structured | 7 | Systematic frameworks for thorough exploration |
| theatrical | 5 | Playful exploration for radical perspectives |
| wild | 7 | Extreme thinking for pushing boundaries |
| biomimetic | 3 | Nature-inspired solutions |
| quantum | 3 | Quantum principle applications |
| cultural | 4 | Cross-cultural and traditional knowledge |

### Sample Techniques

- **SCAMPER Method**: Systematic creativity through Substitution, Combination, Adaptation, Modification, Put to other uses, Elimination, Reversal
- **Six Thinking Hats**: Explore problems through six distinct perspectives
- **Five Whys**: Drill down through layers of causation
- **First Principles Thinking**: Strip away assumptions to rebuild from fundamentals
- **Chaos Engineering**: Deliberately break things to discover robust solutions

---

## Appendix B: Advanced Elicitation Methods

The advanced elicitation workflow includes 50 methods across 10 categories:

### Categories

1. **collaboration** (10 methods): Stakeholder Round Table, Expert Panel Review, Debate Club, etc.
2. **advanced** (6 methods): Tree of Thoughts, Graph of Thoughts, Thread of Thought, etc.
3. **competitive** (3 methods): Red Team vs Blue Team, Shark Tank Pitch, Code Review Gauntlet
4. **technical** (5 methods): Architecture Decision Records, Rubber Duck Debugging, etc.
5. **creative** (6 methods): SCAMPER, Reverse Engineering, What If Scenarios, etc.
6. **research** (3 methods): Literature Review Personas, Thesis Defense, Comparative Analysis
7. **risk** (5 methods): Pre-mortem Analysis, Failure Mode Analysis, Chaos Monkey, etc.
8. **core** (6 methods): First Principles, 5 Whys, Socratic Questioning, etc.
9. **learning** (2 methods): Feynman Technique, Active Recall Testing
10. **philosophical** (2 methods): Occam's Razor, Trolley Problem Variations

---

## Conclusion

The BMAD CORE module is a sophisticated foundation layer that enables complex multi-agent workflows within Claude Code. Its key innovations include:

1. **Micro-file architecture** for disciplined, step-by-step workflow execution
2. **Configuration-driven design** for personalization and flexibility
3. **Runtime resource loading** for efficiency and scalability
4. **Frontmatter state tracking** for seamless workflow continuation
5. **Party Mode** for genuine multi-agent collaborative discussions
6. **Advanced Elicitation** for iterative content refinement
7. **Comprehensive task library** for document management and quality assurance

All other BMAD modules build upon this foundation, extending the agent roster, workflow library, and task capabilities while maintaining consistency with CORE's architectural patterns and integration mechanisms.
