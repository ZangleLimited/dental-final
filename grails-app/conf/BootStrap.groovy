import passdentistry.Admin
import passdentistry.Answer
import passdentistry.Question

class BootStrap {

    private static final String PERIODONTOLOGY = "Periodontology"

    def init = { servletContext ->
        addAdmin()

        addCategory("Paediatric Dentistry")
        addCategory(PERIODONTOLOGY)
        addCategory("Prothodontics")
        addCategory("Oral Medicine")
        addCategory("Oral Surgery")
        addCategory("Orthodontics")
        addCategory("Restorative Dentistry")

        addQuestions()
    }

    def destroy = {
    }

    def addCategory(def categoryName) {
        if (!passdentistry.Category.findByName(categoryName)) {
            new passdentistry.Category(name: categoryName).save()
        }
    }

    def addAdmin() {
        if (!Admin.findByEmail("admin@passdentistry.com")) {
            new Admin(email: "admin@passdentistry.com", password: "password").save()
        }
    }

    def saveQuestion(String category, String questionText, correctAnswers, incorrectAnswers){
        if(Question.findByQuestion(questionText)) return

        def question = new Question(question: questionText)
        question.category = passdentistry.Category.findByName(category)
        for (def correctAnswer  : correctAnswers) {
            question.addToAnswers(new Answer(answer: correctAnswer, isCorrect: true))
        }
        for (def incorrectAnswer  : incorrectAnswers) {
            question.addToAnswers(new Answer(answer: incorrectAnswer, isCorrect: false))
        }
        question.save()
    }

    def addQuestions(){
        saveQuestion(PERIODONTOLOGY, "'The biological process by which the architecture and function of the lost tissue is completely restored'. In Periodontology this is a definition of which of the following?",
           ["Regeneration"],
           ["New Attachment", "Repair", "Primary Healing", "Reattachment"]
        )

        saveQuestion(PERIODONTOLOGY, "What is not a characteristic feature of gingivitis?",
                ["Tooth Mobility"],
                ["Inflammation of the Gingiva", "Bleeding on Probing", "Erythematous Gingivae"]
        )

        saveQuestion(PERIODONTOLOGY, "What is not a characteristic feature of Periodontitis?",
                ["Bleeding on Probing"],
                ["Bone Loss", "Attachment Loss", "Tooth Mobility"]
        )

        saveQuestion(PERIODONTOLOGY, "Which Bacteria is likely pathogen of Aggressive Gingivitis",
                ["Aggregatibacter Actinomycetemcomitans"],
                ["Stephyloccoccus Mutans", "Staphelococus Aures", "Prevotella Intermedia"]
        )

        saveQuestion(PERIODONTOLOGY, "What specific bacteria cause Acute Necrotising Ulcerative Gingivitis?",
                ["Prevotela Intermedia"],
                ["Candida Albicans", "Streptococcus mutans", "Staphylococcus aureus"]
        )

        saveQuestion(PERIODONTOLOGY, "What is not a risk factor for Periodontal Disease?",
                ["Alcohol"],
                ["Smoking", "Diabetes", "Poor OH"]
        )

        saveQuestion(PERIODONTOLOGY, "What does the Astrix (*) represent when undertaking a basic periodontal exam?",
                ["Furcation Involvement"],
                ["Mobility", "Bleeding on Probing", "Horizontal Bone Loss"]
        )

        saveQuestion(PERIODONTOLOGY, "What is the probing force when using the CPITN probe?",
                ["20-25gm"],
                ["32-38gm", "15-18gm", "5-10gm"]
        )

        saveQuestion(PERIODONTOLOGY, "Which of the following is not appropriate treatment for chronic periodontitis?",
                ["Prescription of Antibiotics"],
                ["Dental Health Education", "Pocet Charting", "Smoking cessation Advice", "Root surface debridement"]
        )

        saveQuestion(PERIODONTOLOGY, "Which is not a contemporary classification of Periodontal Disease?",
                ["Adult onset Periodontitis"],
                ["Periodontitis as a manifestation of systemic disease", "Chronic Periodontitis", "Aggressive Periodontitis", "Necrotising Periodontitis"]
        )

        saveQuestion(PERIODONTOLOGY, "What drugs cause gingival hyperplasia?",
                ["Cyclosporin A"],
                ["NSAIDs", "Atenalol", "Metformin", "Bendroflumethiazide"]
        )

        saveQuestion(PERIODONTOLOGY, "Which of the following is not appropriate treatment for gingivitis?",
                ["Root surface debridement"],
                ["Supragingival cleaning", "Removal of a defective restoration", "Use of antiseptic mouthwash", "Tooth brushing advice"]
        )

        saveQuestion(PERIODONTOLOGY, "What is the length from the ball end to the first black line on a CPITN probe?",
                ["Root surface debridement"],
                ["3.5 mm", "2.5mm", "5.5mm", "6.5mm"]
        )

        saveQuestion(PERIODONTOLOGY, "You examine a patient and find BPE code of 4 in all sextants. Radiographs show generalised     moderate horizontal bone loss. Which of the following is the most important factor when considering the prognosis for the teeth?",
                ["The Oral Hygiene Status"],
                ["Age of the patient", "Bleeding on Probing Score", "Mobility", "Gingival Recession"]
        )

        saveQuestion(PERIODONTOLOGY, "A 35 yr-old patient attends complaining of sporadic pain from the lower left quadrant. Clinical examination reveals an extensively restored dentition with good oral hygiene. There is no noteworthy periodontal pocketing other than an isolated defect in the region of the furcation of lower left second molar which is not mobile. The gingival tissue in this area appears erythematous and slightly hyperplastic with a pus-filled exudate on probing. From the list below, which is the most appropriate next step?",
                ["Obtain a radiograph"],
                ["Biopsy the gingival tissue", "Remove the restoration", "Vitality testing", "Prescribe antibiotics"]
        )

        saveQuestion(PERIODONTOLOGY, "A new patient attends your practice. At the initial examination, you carry out a Basic Periodontal Examination (BPE). What does a BPE score of 1 signify?",
                ["Presence of bleeding on probing"],
                ["Periodontal health", "Probing depths greater than 3.5mm", "Presence of overhanging restorations", "Presence of supragingival calculus"]
        )

    }

}
