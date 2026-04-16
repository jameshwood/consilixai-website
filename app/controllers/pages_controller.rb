class PagesController < ApplicationController
  POSTS = [
    {
      slug: "a-day-back",
      title: "A day back, and why most invoicing automation doesn't stick",
      date: Date.new(2026, 4, 14),
      date_display: "April 2026",
      dek: "A client was losing the whole last Friday of every month to invoicing. Notes on why the human-in-the-loop step is the thing that makes finance automation survive.",
      tags: ["Finance and accounting", "Human-in-the-loop"],
      body_html: <<~HTML
        <p>Most small businesses that try to automate their monthly invoicing end up in one of two places. Either the automation is too aggressive, invoices go out wrong, clients notice, trust breaks and the whole thing gets switched off within six weeks. Or the automation is too timid, it still asks for approval on every line item, the owner ends up re-reviewing everything anyway and the "automation" becomes a different-shaped version of the same lost day.</p>

        <p>The thing that works sits in the middle.</p>

        <p>A client of mine was losing the whole of the last Friday of every month turning timesheets into Xero invoices. Not a couple of hours, a full working day, every month, gone. They had four to ten clients. The hourly rate was different per client. The VAT treatment was different per client. The timesheet format was their own.</p>

        <p>The build was not complicated. Poll the time-tracking API for the month's entries. Map those entries to Xero contacts using a rate card the owner controlled. Generate draft invoices with attached timesheet PDFs. On the last Friday of the month, the system pings them on WhatsApp: <em>&ldquo;Invoices ready for July: 7 clients, &pound;14,320 total. [Approve all] [Review each] [Hold].&rdquo;</em></p>

        <p>Approve-all authorises every invoice and emails it to the client. Review-each walks them through the drafts one at a time. Hold pauses the whole batch until they reply.</p>

        <p>The thing that made it stick was the WhatsApp step. Not because WhatsApp is technically interesting, it isn't, but because it turned the human-in-the-loop moment into something that happens on a phone in under a minute, instead of something that requires opening Xero in a browser and working through seven draft invoices one at a time.</p>

        <p>The lesson I&rsquo;d generalise: when you automate a finance workflow, the automation is the easy part. The survival of the automation depends entirely on how you design the approval step. If the approval is friction-heavy, the owner bypasses it. If the approval is frictionless, they start missing errors.</p>

        <p>Get the approval step right, get the notification right, and you can automate most monthly finance work end to end. Get it wrong and you end up with an expensive piece of software that still costs a day to operate.</p>

        <p>The last Friday of the month came back.</p>
      HTML
    },
    {
      slug: "the-data-is-already-there",
      title: "The data is already there",
      date: Date.new(2026, 3, 20),
      date_display: "March 2026",
      dek: "Before you build a new outreach tool, CRM or internal wiki, audit what your team already types. The knowledge base you want probably already exists, spread across an email archive and a Drive folder.",
      tags: ["Agency operations", "Knowledge architecture"],
      body_html: <<~HTML
        <p>An agency asked me to build them a brand and social outreach tool last year. They wanted something that helped the team identify the right brands to approach for each athlete they represent, track every partnership conversation in motion and time the outreach so it did not compete with itself.</p>

        <p>A reasonable thing to want.</p>

        <p>I asked how they were tracking those things today. The answer, more or less, was: email, Slack, a shared Google Drive, a spreadsheet one partner maintained and several other spreadsheets nobody quite knew about.</p>

        <p>I told them I would not build them the tool they had asked for.</p>

        <p>This was not because the idea was bad. It was because I have watched fifteen people try to maintain data entry into an outreach tool and I have watched zero of them succeed past month three. The data-entry burden was the problem and a new tool would be the same problem with a fresh UI.</p>

        <p>So we built the opposite.</p>

        <p>The system reads the senior team&rsquo;s inboxes, reads the shared drive, reads the meeting-notes channel, reads the documents that already exist. Every night. It extracts the athletes, the brands, the active conversations, the relationships, the signals. It writes those into a structured database. The humans do not have to enter a single thing they did not already have to type somewhere else.</p>

        <p>The partners came in on Monday and the knowledge base was full. Not because they had spent two weeks doing data entry; they had done no data entry at all. Because the data was already there, distributed across twenty thousand emails and a few hundred documents. The system read it faster than they ever could have.</p>

        <p>The outreach engine built on top of that knowledge base could then do its job: suggest which brands to approach for which athletes, flag where a conversation had gone quiet, surface the signals from news and email that meant an opportunity had opened. The social outreach layer worked the same way, reading what the team had already written and drafting what came next.</p>

        <p>The pattern generalises beyond outreach. Every business has, right now, a huge amount of structured knowledge sitting in unstructured form inside systems nobody thinks of as knowledge bases. The email archive. The contract folder. The supplier folder. The meeting-notes channel. Over time, the team&rsquo;s institutional knowledge lives in there.</p>

        <p>Most software vendors think the solution is to give the team a better place to write things down. This is the wrong answer. The team already wrote things down, years ago, in the first system. The solution is to read what they wrote.</p>

        <p>I would say this to any business considering an outreach tool, a CRM, a knowledge-management system, an internal wiki or a decision log. Before you make your team type anything new, audit what they already type. There will be more of it than you think and an AI that reads it is cheaper than a team that keeps writing it twice.</p>

        <p>The second database costs less than the first one, because the first one already exists.</p>
      HTML
    },
    {
      slug: "weekly-roundup",
      title: "The weekly roundup that stopped the Monday meeting",
      date: Date.new(2026, 3, 6),
      date_display: "March 2026",
      dek: "Most AI consultancies sell chatbots because chatbots demo well. The more valuable system answers the question nobody had time to ask.",
      tags: ["Agency operations", "Workflow design"],
      body_html: <<~HTML
        <p>Every agency I have worked with has some version of the same Monday-morning meeting. The senior team gathers, a junior person summarises what happened across the client portfolio last week, the senior people react, the meeting runs forty minutes over and nobody writes anything down.</p>

        <p>One of those agencies asked me if AI could help.</p>

        <p>The first thing they suggested, reasonably, was a chatbot that could answer questions about the portfolio. A senior partner could ask <em>&ldquo;what happened with client X last week&rdquo;</em> and get a straight answer. Good idea in principle. Bad use of AI in practice, for a reason that takes longer to explain than it should.</p>

        <p>The question <em>&ldquo;what happened with X last week&rdquo;</em> is not the real question. The real question is <em>&ldquo;what should I be paying attention to across everything that happened last week&rdquo;</em>. The second one is harder. The second one is what the Monday meeting was actually trying to produce.</p>

        <p>So we built the thing that produced the answer to the second question, on its own, in advance.</p>

        <p>Every Friday afternoon, the system scans seven days of ingested signal across every client account. Emails, documents, meeting notes, public mentions. It clusters what it finds into themes. It ranks the themes by significance, by novelty and by how much of the senior team&rsquo;s attention they are likely to need. It writes a short, themed brief in the agency&rsquo;s house voice. The brief lands in the partners&rsquo; inboxes before they log off for the weekend.</p>

        <p>The Monday meeting used to be forty-five minutes. It is now a fifteen-minute walk-through of two or three items from the brief that need a decision. The preamble stopped being necessary, because the preamble was already read.</p>

        <p>There is a pattern in this I want to name.</p>

        <p>AI consultancies sell you chatbots because chatbots demo well. You ask a question, the AI answers, everyone nods. The demo is the product. But in a real business, the demo-shaped question is almost never the one that matters. The questions that matter are the ones nobody thinks to ask because nobody has time. <em>&ldquo;What should I be paying attention to this week&rdquo;</em> is that kind of question. It has no trigger. Nobody asks it, because nobody has five minutes on a Monday morning to form the thought.</p>

        <p>A system that produces the answer to the unasked question is worth ten chatbots.</p>

        <p>The roundup did not replace the senior team. It replaced the meeting about the senior team. Those are different things and only one of them was ever worth the time.</p>
      HTML
    },
    {
      slug: "quote-before-the-quote",
      title: "The quote before the quote",
      date: Date.new(2026, 2, 18),
      date_display: "February 2026",
      dek: "Most AI proposals sound the same because the prompts behind them are the same. Treating tone as a data problem, not a prompt problem.",
      tags: ["Hospitality", "Voice and tone"],
      body_html: <<~HTML
        <p>A hospitality concierge was quoting bespoke packages for high-net-worth clients. Every quote took two or three days. Every quote was brand-critical. If it didn&rsquo;t sound like him, the client noticed.</p>

        <p>Most AI tools that try to solve this problem fail at the second part.</p>

        <p>The first part, pulling supplier prices, applying the firm&rsquo;s margin, generating a document, is straightforward. You can do it with off-the-shelf tools and a weekend. The quote comes out fast. The quote is accurate. The quote does not sound like the person who runs the firm.</p>

        <p>Tone is not a styling problem. You cannot solve it with a prompt that says <em>&ldquo;write in a warm, premium voice&rdquo;</em>. Every AI-generated proposal you have ever received had a prompt like that behind it. They all sound the same, because the training data is the same.</p>

        <p>The way to actually solve tone is not to prompt it. It is to extract it.</p>

        <p>We took forty-odd quotes the founder had written by hand over the previous two years. We parsed them. We extracted the sentence patterns he used, the words he avoided, the length of his paragraphs, the structure of his openers, the way he signed off. We built a style layer specific to him, not specific to <em>&ldquo;luxury hospitality&rdquo;</em> as a category.</p>

        <p>The quote engine generates the price structure. The style layer rewrites the output in his register before it ever reaches him for review.</p>

        <p>The round of review shrunk from <em>&ldquo;rewrite most of it&rdquo;</em> to <em>&ldquo;check one or two numbers and send&rdquo;</em>. The turnaround dropped from days to hours.</p>

        <p>If I had to give one piece of advice to anyone trying to automate a client-facing document workflow, it would be this: treat tone as a data problem, not a prompt problem. Find the existing body of work. Extract the patterns. Teach the system what your firm actually sounds like and stop relying on generic descriptions.</p>

        <p>Everything else is straightforward.</p>
      HTML
    },
    {
      slug: "137-phases",
      title: "137 phases, one bot, zero shortcuts",
      date: Date.new(2026, 1, 12),
      date_display: "January 2026",
      dek: "The discipline of incremental shipping on a live, market-facing AI system. Notes on why the big-bang approach always loses.",
      tags: ["Architecture", "Delivery discipline"],
      body_html: <<~HTML
        <p>I have a trading system that runs continuously on a prediction-markets platform. It is at 137 development phases. Each phase is a small, tested, shipped piece of behaviour. Each one went through a discovery note, a plan, a review and a set of tests that had to pass before the phase could be marked complete.</p>

        <p>I mention the number 137 because it is the opposite of how most people talk about AI systems.</p>

        <p>The standard AI-project narrative is: we built a thing, it does X, look at the demo. The true story, in my experience, is: we built a tiny thing, it did X poorly, we added a second tiny thing that did Y, we spent a week fixing the subtle bug where X and Y interacted badly, we shipped a third tiny thing and so on, for months.</p>

        <p>The system I&rsquo;m describing started with one pattern: screen every live market, rank them, pick the top few, execute a trade. That worked for about a week. Then we added news ingestion, because markets move on news before they move on fundamentals. Then we added a research layer, because news without context is noise. Then we added resolution-confidence gating, because some markets resolve ambiguously and it is better to stay out. Then we added an arbitrage detector, because some markets have internal inconsistencies worth more than the headline signal. Then we added position sizing, because without it a few bad trades wipe out a month of good ones.</p>

        <p>Every one of those was a phase. Every one of those shipped and ran before we moved on.</p>

        <p>The alternative, building the whole thing in one shot, deploying it, watching it go wrong, is the thing every AI consultancy I have watched has done at least once. It never works. What works is the discipline of incremental shipping: small, tested, live; small, tested, live; small, tested, live. For months.</p>

        <p>The tests matter. The phases matter. The willingness to ship something that only does one thing matters. The 1,800-odd tests the system carries are not a flex, they are what lets me change one piece without breaking five others.</p>

        <p>If you are looking at an AI vendor who promises to build your whole thing in two weeks, you are looking at an AI vendor who has not run one of these systems in production. Tell them no. Tell them to build piece one. Run it. Then decide.</p>
      HTML
    }
  ].freeze

  def home
    @recent_posts = POSTS.sort_by { |p| p[:date] }.reverse.first(3)
  end

  # `process` is a reserved method name on Object; use `process_page` and render the
  # `process` template explicitly so the URL remains /process.
  def process_page
    render :process
  end

  def work
  end

  def writing
    @posts = POSTS.sort_by { |p| p[:date] }.reverse
  end

  def writing_post
    @post = POSTS.find { |p| p[:slug] == params[:slug] }
    raise ActionController::RoutingError, "Post not found" unless @post
    @related = POSTS.reject { |p| p[:slug] == @post[:slug] }.sort_by { |p| p[:date] }.reverse.first(3)
    render :writing_post
  end

  def about
  end

  def contact
  end

  def create_contact
    contact_params = params.permit(:name, :email, :company, :message)

    if contact_params[:name].present? && contact_params[:email].present? && contact_params[:message].present?
      begin
        ContactMailer.new_contact_message(contact_params).deliver_now
        flash[:notice] = "Thanks, I'll reply within one working day."
        redirect_to contact_path
      rescue => e
        Rails.logger.error "Contact form error: #{e.message}"
        flash[:alert] = "Something failed on our end. Email hello@consilix.ai directly and I'll pick it up."
        redirect_to contact_path
      end
    else
      flash[:alert] = "Please fill in name, email, and the short description."
      redirect_to contact_path
    end
  end

  def terms
  end

  def privacy
  end

  def cookies
  end
end
