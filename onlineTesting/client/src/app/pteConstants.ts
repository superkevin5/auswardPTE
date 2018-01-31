export const pteConstants = {
  apiRoot:'http://localhost:9001/pteausward',
  audioPathMap:{
    readAloud:'http://localhost:9001/public/readAloud/'
  },
  testCategory: {
    Speaking: [
      {
        key: 'readAloud',
        text: 'Read aloud',
        path: 'questions/read-aloud'
      },
      {
        key: 'repeatSentence',
        text: 'Repeat Sentence',
        path: ''
      },
      {
        key: 'describeImage',
        text: 'Describe Image',
        path: ''
      },
      {
        key: 'retellLecture',
        text: 'Retell Lecture',
        path: ''
      },
      {
        key: 'answerShortQuestion',
        text: 'Answer Short Question',
        path: ''
      }
    ],
    Listening: [
      {
        key: 'summarizeSpokenText',
        text: 'Summarize Spoken Text',
        path: ''
      },
      {
        key: 'writeFromDictation',
        text: 'Write From Dictation',
        path: ''
      },
      {
        key: 'listeningFillIntheBlanks',
        text: 'Listening Fill In the Blanks',
        path: ''
      },
      {
        key: 'highLightInCorrectWords',
        text: 'High Light In Correct Words',
        path: 'questions/high-light-incorrect-words'
      }
    ],
    Reading: [
      {
        key: 'reorderParagraph',
        text: 'Re-order Paragraphs',
        path: ''
      },
      {
        key: 'readingFillInTheBlanks',
        text: 'Reading Fill In The Blanks',
        path: 'questions/read-fill-in-the-blank'
      }
    ],
    Writing: [
      {
        key: 'summarizeWrittenText',
        text: 'Summarize Written Text',
        path: ''
      },
      {
        key: 'writeEssay',
        text: 'Write Essay',
        path: ''
      }
    ]
  }
};
