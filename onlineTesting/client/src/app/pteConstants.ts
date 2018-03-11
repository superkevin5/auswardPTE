export const pteConstants = {
  apiRoot:'http://localhost:9001/pteausward',
  audioPathMap:{
    readAloudMale:'http://localhost:9001/public/readAloud/male/',
    readAloudFemale:'http://localhost:9001/public/readAloud/female/',
    describeImage:'http://localhost:9001/public/describeImage/audio/',
    listenFillBlank:'http://localhost:9001/public/listenFillBlank/',
    repeatSentence:'http://localhost:9001/public/repeatSentence/',
    retellLecture:'http://localhost:9001/public/retellLecture/audio/',
    answerShortQuestion:'http://localhost:9001/public/answershortquestion/',
    highLightIncorrectWords:'http://localhost:9001/public/highLightIncorrect/',
    writeFromDictation:'http://localhost:9001/public/writeFromDictation/',
  },
  descriptionPath: {
    retellLecture:'http://localhost:9001/public/retellLecture/description/',
    describeImage:'http://localhost:9001/public/describeImage/description/',
  },
  imagePath: {
    retellLecture:'http://localhost:9001/public/retellLecture/image/',
    describeImage:'http://localhost:9001/public/describeImage/image/',
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
        path: 'questions/repeat-sentence'
      },
      {
        key: 'describeImage',
        text: 'Describe Image',
        path: 'questions/describe-image'
      },
      {
        key: 'retellLecture',
        text: 'Retell Lecture',
        path: 'questions/retell-lecture'
      },
      {
        key: 'answerShortQuestion',
        text: 'Answer Short Question',
        path: 'questions/short-question'
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
        path: 'questions/write-from-dictation'
      },
      {
        key: 'listeningFillIntheBlanks',
        text: 'Listening Fill In the Blanks',
        path: 'questions/listen-fill-in-the-blank'
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
        path: 'questions/read-reorder-paragraph'
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
        path: 'questions/summarise-written-text'
      },
      {
        key: 'writeEssay',
        text: 'Write Essay',
        path: 'questions/write-essay'
      }
    ]
  }
};
