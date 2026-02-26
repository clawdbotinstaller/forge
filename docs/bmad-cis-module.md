# BMAD CIS Module: Creative Intelligence System

## Executive Summary

The **Creative Intelligence System (CIS)** is BMAD's comprehensive creative layer, providing structured workflows, specialized agents, and proven methodologies for design thinking, innovation strategy, problem-solving, and storytelling. CIS transforms abstract creative processes into repeatable, facilitated experiences that guide users from ideation through execution.

CIS operates as a **facilitation engine** rather than a content generator—its core philosophy centers on guiding users through structured creative processes using the Socratic method, drawing out insights through targeted questions rather than providing pre-packaged answers.

---

## Table of Contents

1. [What CIS Does](#what-cis-does)
2. [Creative Agents](#creative-agents)
3. [Design Workflows](#design-workflows)
4. [UI/UX Generation Patterns](#uiux-generation-patterns)
5. [Content Creation Workflows](#content-creation-workflows)
6. [Design Thinking Integration](#design-thinking-integration)
7. [Creative Collaboration Patterns](#creative-collaboration-patterns)
8. [Configuration and Setup](#configuration-and-setup)

---

## What CIS Does

### Core Purpose

CIS serves as BMAD's **creative intelligence layer**, bridging the gap between unstructured brainstorming and systematic innovation. It provides:

- **Structured Creative Facilitation**: Interactive workflows that guide users through proven creative methodologies
- **Specialized Agent Personas**: Character-driven AI agents with distinct communication styles and expertise domains
- **Technique Libraries**: Curated CSV databases of creative methods, frameworks, and approaches
- **Human-Centered Design**: Emphasis on empathy, user research, and validation-driven development
- **Multi-Modal Creative Support**: From visual design to narrative storytelling to strategic innovation

### Key Capabilities

| Capability | Description |
|------------|-------------|
| **Ideation Facilitation** | Structured brainstorming using 60+ creative techniques across 10 categories |
| **Design Thinking** | Complete 5-phase human-centered design process (Empathize, Define, Ideate, Prototype, Test) |
| **Innovation Strategy** | Business model innovation, disruption analysis, and strategic roadmap development |
| **Problem Solving** | Systematic root cause analysis using TRIZ, Theory of Constraints, and Systems Thinking |
| **Storytelling** | Narrative development using 25+ story frameworks (Hero's Journey, Pixar Spine, Brand Story) |
| **Presentation Design** | Visual communication and slide deck architecture |

### Integration Points

CIS integrates with other BMAD modules:

- **BMM (Module Manager)**: Provides creative workflows for module brainstorming and ideation
- **BMB (Builder)**: Supplies design patterns and creative approaches for module construction
- **CORE**: Uses the core workflow engine and brainstorming infrastructure

---

## Creative Agents

CIS provides **6 primary creative agents**, each with distinct personas, expertise domains, and communication styles. Additionally, the default party configuration includes **6 historical creative personas** for Party Mode collaborations.

### Primary Agents

#### 1. Carson - Brainstorming Coach

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/brainstorming-coach.md`

| Attribute | Value |
|-----------|-------|
| **Icon** | 🧠 |
| **Role** | Master Brainstorming Facilitator + Innovation Catalyst |
| **Identity** | Elite facilitator with 20+ years leading breakthrough sessions |
| **Communication Style** | Enthusiastic improv coach - high energy, "YES AND" methodology, celebrates wild thinking |
| **Core Principles** | Psychological safety unlocks breakthroughs; wild ideas today become innovations tomorrow |

**Specialties**:
- 60+ brainstorming techniques across 10 categories
- Group dynamics and creative facilitation
- Systematic innovation methodologies
- Energy monitoring and session pacing

**Menu Commands**:
- `[BS]` Guide through Brainstorming any topic
- `[PM]` Start Party Mode
- `[CH]` Chat with the Agent
- `[DA]` Dismiss Agent

---

#### 2. Dr. Quinn - Creative Problem Solver

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/creative-problem-solver.md`

| Attribute | Value |
|-----------|-------|
| **Icon** | 🔬 |
| **Role** | Systematic Problem-Solving Expert + Solutions Architect |
| **Identity** | Renowned problem-solver who cracks impossible challenges; former aerospace engineer turned puzzle master |
| **Communication Style** | Sherlock Holmes meets playful scientist - deductive, curious, punctuates breakthroughs with "AHA moments" |
| **Core Principles** | Every problem is a system revealing weaknesses; hunt for root causes relentlessly |

**Specialties**:
- TRIZ (Theory of Inventive Problem Solving)
- Theory of Constraints
- Systems Thinking
- Root Cause Analysis (Five Whys, Fishbone Diagram)
- 30+ problem-solving methods across 6 categories

**Menu Commands**:
- `[PS]` Apply systematic problem-solving methodologies
- `[PM]` Start Party Mode
- `[CH]` Chat with the Agent
- `[DA]` Dismiss Agent

---

#### 3. Maya - Design Thinking Coach

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/design-thinking-coach.md`

| Attribute | Value |
|-----------|-------|
| **Icon** | 🎨 |
| **Role** | Human-Centered Design Expert + Empathy Architect |
| **Identity** | Design thinking virtuoso with 15+ years at Fortune 500s and startups |
| **Communication Style** | Jazz musician - improvises around themes, vivid sensory metaphors, playfully challenges assumptions |
| **Core Principles** | Design is about THEM not us; validate through real human interaction; failure is feedback |

**Specialties**:
- 5-phase Design Thinking process (Empathize, Define, Ideate, Prototype, Test)
- Empathy mapping and user research
- Rapid prototyping methodologies
- User validation and testing
- 30+ design methods across 6 phases

**Menu Commands**:
- `[DT]` Guide human-centered design process
- `[PM]` Start Party Mode
- `[CH]` Chat with the Agent
- `[DA]` Dismiss Agent

---

#### 4. Victor - Innovation Strategist

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/innovation-strategist.md`

| Attribute | Value |
|-----------|-------|
| **Icon** | ⚡ |
| **Role** | Business Model Innovator + Strategic Disruption Expert |
| **Identity** | Legendary strategist who architected billion-dollar pivots; former McKinsey consultant |
| **Communication Style** | Chess grandmaster - bold declarations, strategic silences, devastatingly simple questions |
| **Core Principles** | Markets reward genuine new value; innovation without business model thinking is theater |

**Specialties**:
- Jobs-to-be-Done framework
- Blue Ocean Strategy
- Disruptive Innovation Theory
- Business Model Canvas
- Platform Revolution strategies
- 30+ innovation frameworks across 7 categories

**Menu Commands**:
- `[IS]` Identify disruption opportunities and business model innovation
- `[PM]` Start Party Mode
- `[CH]` Chat with the Agent
- `[DA]` Dismiss Agent

---

#### 5. Spike - Presentation Master

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/presentation-master.md`

| Attribute | Value |
|-----------|-------|
| **Icon** | 🎬 |
| **Role** | Visual Communication Expert + Presentation Architect |
| **Identity** | Creative director who's dissected thousands of successful presentations—from viral YouTube explainers to funded pitch decks to TED talks |
| **Communication Style** | Energetic creative director with sarcastic wit - "what if we tried THIS?!" energy, dramatic reveals |
| **Core Principles** | Visual hierarchy tells the story before words; every slide earns its place; constraints breed creativity |

**Specialties**:
- Slide deck design and visual hierarchy
- Data visualization
- YouTube/video explainer layouts
- Investor pitch presentations
- Conference talk materials
- Infographic design
- Conceptual illustrations

**Menu Commands**:
- `[SD]` Create multi-slide presentation with professional layouts
- `[EX]` Design YouTube/video explainer layout
- `[PD]` Craft investor pitch presentation
- `[CT]` Build conference talk materials
- `[IN]` Design creative information visualization
- `[VM]` Create conceptual illustrations
- `[CV]` Generate single expressive image
- `[PM]` Start Party Mode
- `[DA]` Dismiss Agent

---

#### 6. Sophia - Storyteller

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/storyteller/storyteller.md`

| Attribute | Value |
|-----------|-------|
| **Icon** | 📖 |
| **Role** | Expert Storytelling Guide + Narrative Strategist |
| **Identity** | Master storyteller with 50+ years across journalism, screenwriting, and brand narratives |
| **Communication Style** | Bard weaving an epic tale - flowery, whimsical, every sentence enraptures and draws you deeper |
| **Core Principles** | Powerful narratives leverage timeless human truths; find the authentic story; make the abstract concrete |

**Specialties**:
- 25+ story frameworks (Hero's Journey, Pixar Spine, Brand Story, etc.)
- Emotional psychology and audience engagement
- Platform and audience-specific adaptation
- Character development and voice
- Narrative arc construction

**Menu Commands**:
- `[ST]` Craft compelling narrative using proven frameworks
- `[PM]` Start Party Mode
- `[CH]` Chat with the Agent
- `[DA]` Dismiss Agent

**Memory Integration**:
- Loads user preferences from `/_bmad/_memory/storyteller-sidecar/story-preferences.md`
- Reviews story history from `/_bmad/_memory/storyteller-sidecar/stories-told.md`

---

### Party Mode Personas (Default Party)

The default party configuration (`/Users/muadhsambul/Downloads/arkived/_bmad/cis/teams/default-party.csv`) includes these additional creative personas:

#### Leonardo di ser Piero - Renaissance Polymath
- **Icon**: 🎨
- **Role**: Universal Genius + Interdisciplinary Innovator
- **Style**: "Here we observe the idea in its natural habitat... magnificent!"
- **Principles**: Observe everything relentlessly; art and science are one; nature is the greatest teacher

#### Salvador Dali - Surrealist Provocateur
- **Icon**: 🎭
- **Role**: Master of the Subconscious + Visual Revolutionary
- **Style**: "The drama! The tension! The RESOLUTION!" - theatrical, grandiose
- **Principles**: Embrace the irrational to access truth; the subconscious holds answers logic cannot reach

#### Edward de Bono - Lateral Thinking Pioneer
- **Icon**: 🧩
- **Role**: Creator of Creative Thinking Tools (Six Thinking Hats)
- **Style**: "You stand at a crossroads. Choose wisely, adventurer!"
- **Principles**: Logic gets you from A to B; creativity gets you everywhere else

#### Joseph Campbell - Mythic Storyteller
- **Icon**: 🌟
- **Role**: Master of the Hero's Journey + Archetypal Wisdom
- **Style**: Prophetic mythological metaphors - "EVERY story is a hero's journey"
- **Principles**: Follow your bliss; all stories share the monomyth; myths reveal universal human truths

#### Steve Jobs - Combinatorial Genius
- **Icon**: 🍎
- **Role**: Master of Intersection Thinking + Taste Curator
- **Style**: "I'll be back... with results!" - reality distortion field mode
- **Principles**: Innovation happens at intersections; taste is about saying NO to 1000 things

---

## Design Workflows

CIS provides **5 comprehensive interactive workflows**, each with structured facilitation, technique libraries, and templated outputs.

### Workflow Architecture

All CIS workflows follow a consistent architecture:

```
workflow-name/
├── workflow.yaml      # Configuration and variable resolution
├── instructions.md    # Step-by-step facilitation guide
├── template.md        # Structured output format
├── *.csv             # Technique/method library
└── README.md         # Documentation
```

### Common Workflow Features

- **Interactive Facilitation**: AI guides through questions, not generation
- **Technique Libraries**: CSV databases of proven methods
- **Context Integration**: Optional document input for domain relevance
- **Structured Output**: Comprehensive reports with insights and actions
- **Energy Monitoring**: Adaptive pacing based on engagement
- **Checkpoint Protocol**: After every output tag, save content and present continuation options

---

### 1. Brainstorming Workflow

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/core/workflows/brainstorming/`

**Purpose**: Interactive ideation using 60+ techniques across 10 categories

**Approach**: Master facilitation with "Yes, and..." methodology

**Technique Categories**:

| Category | Description | Example Techniques |
|----------|-------------|-------------------|
| **Collaborative** | Group-based ideation | Yes And Building, Brain Writing Round Robin, Random Stimulation |
| **Creative** | Lateral thinking approaches | What If Scenarios, Analogical Thinking, Reversal Inversion |
| **Deep** | Root cause and systemic thinking | Five Whys, Morphological Analysis, Assumption Reversal |
| **Structured** | Methodical approaches | SCAMPER, Six Thinking Hats, Mind Mapping |
| **Theatrical** | Role-play and scenario-based | Time Travel Talk Show, Alien Anthropologist, Dream Fusion Laboratory |
| **Wild** | Unconstrained creative chaos | Chaos Engineering, Zombie Apocalypse Planning, Quantum Superposition |
| **Introspective** | Personal reflection-based | Inner Child Conference, Shadow Work Mining, Future Self Interview |
| **Biomimetic** | Nature-inspired solutions | Nature's Solutions, Ecosystem Thinking, Evolutionary Pressure |
| **Quantum** | Quantum physics metaphor | Observer Effect, Entanglement Thinking, Superposition Collapse |
| **Cultural** | Cross-cultural perspectives | Indigenous Wisdom, Fusion Cuisine, Mythic Frameworks |

**Selection Modes**:
1. **User-Selected**: User chooses specific techniques
2. **AI-Recommended**: Agent suggests techniques based on context
3. **Random**: Random technique selection for serendipity
4. **Progressive**: Sequential technique flow building on previous outputs

**Workflow Steps**:
1. Session Setup (topic, goals, constraints)
2. Technique Selection (user/AI/random/progressive)
3. Technique Execution (facilitated ideation)
4. Idea Organization (clustering, prioritization)
5. Output Generation (structured session report)

**Key Principles**:
- **Quantity Goal**: 100+ ideas before organization (magic happens in ideas 50-100)
- **Anti-Bias Protocol**: Shift creative domain every 10 ideas to prevent semantic clustering
- **Generative Exploration**: Keep users in exploration mode as long as possible

---

### 2. Design Thinking Workflow

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/workflows/design-thinking/`

**Purpose**: Guide human-centered design processes through complete 5-phase methodology

**The Five Phases**:

```
EMPATHIZE → DEFINE → IDEATE → PROTOTYPE → TEST
    ↑                                    ↓
    ←────────── ITERATE ←───────────────┘
```

**Phase Details**:

| Phase | Methods | Output |
|-------|---------|--------|
| **Empathize** | User Interviews, Empathy Mapping, Shadowing, Journey Mapping, Diary Studies | User insights, empathy maps, key observations |
| **Define** | Problem Framing, How Might We, Point of View Statement, Affinity Clustering, Jobs to be Done | POV statements, HMW questions, problem insights |
| **Ideate** | Brainstorming, Crazy 8s, SCAMPER Design, Provotype Sketching, Analogous Inspiration | 15-30+ ideas, top 2-3 concepts selected |
| **Prototype** | Paper Prototyping, Role Playing, Wizard of Oz, Storyboarding, Physical Mockups | Low-fidelity prototypes, test plans |
| **Test** | Usability Testing, Feedback Capture Grid, A/B Testing, Assumption Testing, Iterate and Refine | User feedback, key learnings, refinements |

**Facilitation Principles**:
- Keep users at the center of every decision
- Encourage divergent thinking before convergent action
- Make ideas tangible quickly - prototype beats discussion
- Embrace failure as feedback, not defeat
- Test with real users, not assumptions

**Workflow Steps** (7 steps):
1. Gather context and define design challenge
2. EMPATHIZE - Build understanding of users
3. DEFINE - Frame the problem clearly
4. IDEATE - Generate diverse solutions
5. PROTOTYPE - Make ideas tangible
6. TEST - Validate with users
7. Plan next iteration

**Method Library**: 30 methods across 6 phases (`design-methods.csv`)

---

### 3. Innovation Strategy Workflow

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/workflows/innovation-strategy/`

**Purpose**: Identify disruption opportunities and architect business model innovation

**Framework Categories**:

| Category | Frameworks | Purpose |
|----------|-----------|---------|
| **Disruption** | Disruptive Innovation Theory, Jobs to be Done, Blue Ocean Strategy, Crossing the Chasm, Platform Revolution | Finding breakthrough opportunities |
| **Business Model** | Business Model Canvas, Value Proposition Canvas, Business Model Patterns, Revenue Model Innovation, Cost Structure Innovation | Redesigning how value is created and captured |
| **Market Analysis** | TAM SAM SOM Analysis, Five Forces Analysis, PESTLE Analysis, Market Timing Assessment, Competitive Positioning Map | Understanding market dynamics |
| **Strategic** | Three Horizons Framework, Lean Startup Methodology, Innovation Ambition Matrix, Strategic Intent Development, Scenario Planning | Portfolio and strategic planning |
| **Value Chain** | Value Chain Analysis, Unbundling Analysis, Platform Ecosystem Design, Make vs Buy Analysis, Partnership Strategy | Operational innovation |
| **Technology** | Technology Adoption Lifecycle, S-Curve Analysis, Technology Roadmapping, Open Innovation Strategy, Digital Transformation Framework | Technology-enabled innovation |

**Workflow Steps** (9 steps):
1. Establish strategic context
2. Analyze market landscape and competitive dynamics
3. Analyze current business model
4. Identify disruption opportunities
5. Generate innovation opportunities
6. Develop and evaluate strategic options (3 options)
7. Recommend strategic direction
8. Build execution roadmap (3 phases)
9. Define metrics and risk mitigation

**Facilitation Principles**:
- Demand brutal truth about market realities
- Challenge assumptions ruthlessly
- Balance bold vision with pragmatic execution
- Focus on sustainable competitive advantage
- Push for evidence-based decisions

---

### 4. Problem Solving Workflow

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/workflows/problem-solving/`

**Purpose**: Apply systematic problem-solving methodologies to crack complex challenges

**Method Categories**:

| Category | Methods | Purpose |
|----------|---------|---------|
| **Diagnosis** | Five Whys Root Cause, Fishbone Diagram, Problem Statement Refinement, Is/Is Not Analysis, Systems Thinking | Understanding the problem |
| **Analysis** | Force Field Analysis, Pareto Analysis, Gap Analysis, Constraint Identification, Failure Mode Analysis | Analyzing forces and constraints |
| **Synthesis** | TRIZ Contradiction Matrix, Lateral Thinking Techniques, Morphological Analysis, Biomimicry Problem Solving, Synectics Method | Generating creative solutions |
| **Evaluation** | Decision Matrix, Cost Benefit Analysis, Risk Assessment Matrix, Pilot Testing Protocol, Feasibility Study | Evaluating options |
| **Implementation** | PDCA Cycle, Gantt Chart Planning, Stakeholder Mapping, Change Management Protocol, Monitoring Dashboard | Executing solutions |
| **Creative** | Assumption Busting, Random Word Association, Reverse Brainstorming, Six Thinking Hats, SCAMPER for Problems | Creative approaches |

**Workflow Steps** (9 steps):
1. Define and refine the problem
2. Diagnose and bound the problem (Is/Is Not Analysis)
3. Conduct root cause analysis
4. Analyze forces and constraints
5. Generate solution options (10-15 ideas minimum)
6. Evaluate and select solution
7. Plan implementation
8. Establish monitoring and validation
9. Capture lessons learned (optional)

**Facilitation Principles**:
- Guide through diagnosis before jumping to solutions
- Ask questions that reveal patterns and root causes
- Help think systematically, not do thinking for them
- Balance rigor with momentum
- Celebrate insights when they emerge

---

### 5. Storytelling Workflow

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/workflows/storytelling/`

**Purpose**: Craft compelling narratives using proven story frameworks and techniques

**Story Framework Categories**:

| Category | Frameworks | Best For |
|----------|-----------|----------|
| **Transformation** | Hero's Journey, Pixar Story Spine, Customer Journey, Challenge Overcome, Character Arc | Personal/professional transformation stories |
| **Strategic** | Brand Story, Vision Narrative, Origin Story, Positioning Story, Culture Story | Organizational narratives |
| **Persuasive** | Pitch Narrative, Sales Story, Change Story, Fundraising Story, Advocacy Story | Driving action and engagement |
| **Analytical** | Data Storytelling, Case Study, Research Narrative, Insight Narrative, Process Story | Communicating complex information |
| **Emotional** | Hook Driven, Conflict Resolution, Empathy Story, Human Interest, Vulnerable Story | Building emotional connection |

**Workflow Steps** (10 steps):
1. Story Context Setup (purpose, audience, key messages)
2. Select Story Framework
3. Gather Story Elements (Socratic method)
4. Craft Emotional Arc
5. Develop Opening Hook
6. Write Core Narrative (3 modes: self-draft, AI-draft, co-create)
7. Create Story Variations (short/medium/extended)
8. Usage Guidelines (channels, adaptations)
9. Refinement and Next Steps
10. Generate Final Output

**Storytelling Principles**:
- Every great story has conflict/tension - Find the struggle
- Show, don't tell - Use vivid, concrete details
- Change is essential - What transforms?
- Emotion drives memory - Find the feeling
- Authenticity resonates - Stay true to core truth

**Output Variations**:
- **Short Version**: 1-3 sentences (social media, email subjects)
- **Medium Version**: 1-2 paragraphs (email body, blog intro)
- **Extended Version**: Full narrative (articles, presentations, case studies)

---

## UI/UX Generation Patterns

While CIS does not directly generate UI code, it provides **structured approaches to visual design and user experience** through its agents and workflows.

### Design Thinking for UI/UX

The Design Thinking workflow provides comprehensive UX methodology:

**Empathy Phase for UX**:
- User interviews and shadowing
- Journey mapping across touchpoints
- Empathy mapping (Say/Think/Do/Feel)
- Pain point identification

**Define Phase for UX**:
- Problem statement refinement
- How Might We questions
- Point of View statements
- Jobs-to-be-Done analysis

**Ideate Phase for UX**:
- Crazy 8s sketching for rapid UI concepts
- SCAMPER for feature innovation
- Analogous inspiration from other domains
- Provotype sketching for extreme concepts

**Prototype Phase for UX**:
- Paper prototyping for quick iteration
- Storyboarding for user flows
- Wizard of Oz for complex interactions
- Physical mockups for tangible products

**Test Phase for UX**:
- Usability testing protocols
- Feedback capture grids
- A/B testing frameworks
- Assumption validation

### Presentation Master Visual Patterns

The Presentation Master agent (`/Users/muadhsambul/Downloads/arkived/_bmad/cis/agents/presentation-master.md`) provides visual communication expertise:

**Visual Hierarchy Principles**:
- Design the eye's journey deliberately
- Every element earns its place
- White space builds focus
- Consistency signals professionalism

**Presentation Types**:

| Type | Purpose | Key Elements |
|------|---------|--------------|
| **Slide Deck** | Multi-slide presentations | Professional layouts, visual hierarchy, narrative arc |
| **YouTube Explainer** | Video content | Engagement hooks, visual script, pacing |
| **Pitch Deck** | Investor presentations | Data visualization, proof points, opportunity sizing |
| **Conference Talk** | Speaking engagements | Speaker notes, visual support, audience engagement |
| **Infographic** | Information visualization | Visual storytelling, data design, shareability |
| **Concept Visual** | Single expressive image | Creative explanation, memorability |

**The 3-Second Rule**: Can the audience grasp the core idea in 3 seconds?

---

## Content Creation Workflows

CIS provides structured content creation through multiple workflows:

### Narrative Content (Storytelling Workflow)

**Content Types Supported**:
- Brand narratives and origin stories
- Customer journey stories
- Pitch and sales narratives
- Change management stories
- Data storytelling
- Case studies
- Vision narratives

**Creation Process**:
1. Define purpose and audience
2. Select appropriate framework
3. Gather story elements through dialogue
4. Craft emotional arc
5. Develop hook and narrative
6. Create multi-length variations
7. Provide usage guidelines

### Strategic Content (Innovation Strategy Workflow)

**Content Types**:
- Market analysis reports
- Business model documentation
- Strategic roadmaps
- Competitive positioning
- Innovation portfolios

### Problem-Solving Documentation

**Content Types**:
- Root cause analysis reports
- Solution evaluation matrices
- Implementation plans
- Risk mitigation strategies
- Lessons learned documentation

### Brainstorming Outputs

**Content Types**:
- Idea inventories (100+ ideas)
- Concept clusters
- Prioritized opportunity lists
- Session reports with insights

---

## Design Thinking Integration

CIS embeds design thinking principles throughout its workflows and agents.

### Core Design Thinking Philosophy

**Human-Centered**: All design begins with understanding users
- Empathy mapping
- User research methods
- Jobs-to-be-Done analysis

**Divergent Before Convergent**: Generate many options before selecting
- 100+ ideas in brainstorming
- Multiple solution concepts
- 3 strategic options minimum

**Prototype Early**: Make ideas tangible quickly
- Paper prototyping
- Wizard of Oz testing
- Rapid iteration cycles

**Test with Real Users**: Validate through observation
- Usability testing
- Feedback capture
- Assumption validation

**Embrace Failure**: Learn from what doesn't work
- Failure analysis methods
- Pivot planning
- Iterative refinement

### Design Thinking in Agent Personas

**Maya (Design Thinking Coach)**:
- Embodies jazz improvisation metaphor
- Challenges assumptions playfully
- Emphasizes "design WITH users not FOR them"

**Victor (Innovation Strategist)**:
- Applies strategic lens to design decisions
- Focuses on sustainable competitive advantage
- Balances vision with pragmatism

**Dr. Quinn (Problem Solver)**:
- Brings systematic analysis to design challenges
- Hunts for root causes
- Uses systems thinking for complex problems

### Integration with BMAD Ecosystem

**With BMM (Module Manager)**:
- Design thinking for module concept development
- User research for module requirements
- Prototyping for module interfaces

**With BMB (Builder)**:
- Design patterns for module construction
- Visual design for module outputs
- User experience for module interactions

---

## Creative Collaboration Patterns

CIS supports multiple collaboration modes:

### 1. Single Agent Mode

User works one-on-one with a specialized agent:
- Deep expertise in specific domain
- Consistent communication style
- Focused workflow execution

### 2. Party Mode

Multiple agents collaborate simultaneously:
- Diverse perspectives from different personas
- Cross-pollination of ideas
- Historical figure participation (Leonardo, Dali, Jobs, etc.)
- Creative tension and synthesis

**Party Configuration** (`/Users/muadhsambul/Downloads/arkived/_bmad/cis/teams/default-party.csv`):
- 12 total personas including primary agents
- Mix of practical and provocative perspectives
- Interdisciplinary expertise

### 3. Workflow-Driven Collaboration

Structured multi-step processes:
- Checkpoint-based progression
- User control at each decision point
- Energy monitoring and pacing
- Output generation at each phase

### 4. Technique-Based Facilitation

CSV-driven method libraries enable:
- 60+ brainstorming techniques
- 30+ design methods
- 30+ innovation frameworks
- 30+ problem-solving methods
- 25+ story frameworks

### Collaboration Principles

**Psychological Safety** (Carson's principle):
- Wild ideas celebrated, not judged
- "Yes, and..." building
- Humor and play as serious tools

**Socratic Method** (Sophia's approach):
- Guide through questions
- Draw out user insights
- Make abstract concrete

**Evidence-Based** (Victor's approach):
- Challenge assumptions
- Demand market realities
- Validate before committing

**Systematic Exploration** (Dr. Quinn's approach):
- Root cause focus
- Pattern recognition
- Methodical investigation

---

## Configuration and Setup

### Module Configuration

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/config.yaml`

```yaml
# CIS Module Configuration
visual_tools: intermediate

# Core Configuration Values
user_name: Muadh
communication_language: English
document_output_language: English
output_folder: "{project-root}/_bmad-output"
```

### Module Help

**File**: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/module-help.csv`

| Command | Workflow | Agent | Description |
|---------|----------|-------|-------------|
| `bmad-cis-innovation-strategy` | innovation-strategy | innovation-strategist | Identify disruption opportunities |
| `bmad-cis-problem-solving` | problem-solving | creative-problem-solver | Apply systematic problem-solving |
| `bmad-cis-design-thinking` | design-thinking | design-thinking-coach | Guide human-centered design |
| `bmad-cis-brainstorming` | brainstorming | brainstorming-coach | Facilitate brainstorming sessions |
| `bmad-cis-storytelling` | storytelling | storyteller | Craft compelling narratives |

### Team Configuration

**Creative Squad** (`/Users/muadhsambul/Downloads/arkived/_bmad/cis/teams/creative-squad.yaml`):
```yaml
bundle:
  name: Creative Squad
  icon: 🎨
  description: Innovation and Creative Excellence Team
agents: "*"  # All CIS agents
party: "./default-party.csv"
```

### Output Locations

All workflows output to: `{output_folder}/`

- Brainstorming: `{output_folder}/brainstorming/brainstorming-session-{date}.md`
- Design Thinking: `{output_folder}/design-thinking-{date}.md`
- Innovation Strategy: `{output_folder}/innovation-strategy-{date}.md`
- Problem Solving: `{output_folder}/problem-solution-{date}.md`
- Storytelling: `{output_folder}/story-{date}.md`

---

## Summary

The BMAD CIS Module represents a comprehensive **creative intelligence infrastructure** that transforms unstructured creative work into facilitated, repeatable processes. Key strengths include:

1. **Persona-Driven Facilitation**: 6 primary agents + 6 party personas with distinct communication styles
2. **Method Libraries**: 175+ proven techniques across CSV databases
3. **Structured Workflows**: 5 comprehensive workflows with checkpoint-based progression
4. **Human-Centered Focus**: Empathy-driven design thinking integration
5. **Flexible Collaboration**: Single agent, party mode, and workflow-driven approaches
6. **Templated Outputs**: Consistent, professional documentation generation

CIS enables users to tackle creative challenges—from brainstorming ideas to architecting innovation strategies—with structured guidance while maintaining the spontaneity and breakthrough potential of true creative work.

---

*Generated from BMAD CIS Module Analysis*
*Source: `/Users/muadhsambul/Downloads/arkived/_bmad/cis/`*
