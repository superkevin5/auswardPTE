import {ModuleWithProviders} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';

import {ReadAloudComponent} from './readAloud/readAloud.component';
import {ReadFillInBlankComponent} from './readFillInTheBlank/readFillInBlank.component';
import {ListenFillInBlankComponent} from './listenFillInTheBlank/listenFillInBlank.component';
import {ReadReorderParagraphComponent} from './readReorderParagraph/readReorderParagraph.component';
import {WriteEssayComponent} from './writeEssay/writeEssay.component';
import {RepeatSentenceComponent} from './repeatSentence/repeatSentence.component';
import {RetellLectureComponent} from './retellLecture/retellLecture.component';
import {AnswerShortQuestionComponent} from './answerShortQuestion/answerShortQuestion.component';
import {DescribeImageComponent} from './describeImage/describeImage.component';
import {HighLightIncorrectWordsComponent} from './highLightIncorrectWords/highLightIncorrectWords.component';
import {SummariseWrittenTextComponent} from './summariseWrittenText/summariseWrittenText.component';
import {WriteFromDictationComponent} from './writeFromDictation/WriteFromDictation.component';
import {SummariseSpokenTextComponent} from './summariseSpokenText/summariseSpokenText.component';


const routes: Routes = [
  {
    path: '', redirectTo: 'read-aloud', pathMatch: 'full', data: {
    title: "read-aloud",
    metatags: {
      description: "read-aloud",
      keywords: "read-aloud"
    }
  }
  },
  {
    path: 'read-aloud', component: ReadAloudComponent, data: {
    title: "Read aloud",
    metatags: {
      description: "Read aloud",
      keywords: "Read aloud"
    }
  }
  },
  {
    path: 'read-fill-in-the-blank', component: ReadFillInBlankComponent, data: {
    title: "Read fill in the blank",
    metatags: {
      description: "Read fill in the blank",
      keywords: "Read-fill-in-the-blank"
    }
  }
  },
  {
    path: 'Listen-fill-in-the-blank', component: ListenFillInBlankComponent,
    data: {
      title: "Listen fill in the blank",
      metatags: {
        description: "Listen fill in the blank",
        keywords: "Listen-fill-in-the-blank"
      }
    }
  },
  {
    path: 'read-reorder-paragraph', component: ReadReorderParagraphComponent, data: {
    title: "Reorder-paragraph",
    metatags: {
      description: "Reorder paragraph",
      keywords: "reorder-paragraph"
    }
  }
  },
  {
    path: 'high-light-incorrect-words', component: HighLightIncorrectWordsComponent, data: {
    title: "Highlight incorrect words",
    metatags: {
      description: "High-light incorrect-words",
      keywords: "High-light-incorrect-words"
    }
  }
  },
  {
    path: 'write-essay', component: WriteEssayComponent, data: {
    title: "Write essay",
    metatags: {
      description: "Write essay",
      keywords: "write-essay"
    }
  }
  },
  {
    path: 'repeat-sentence', component: RepeatSentenceComponent, data: {
    title: "Repeat sentence",
    metatags: {
      description: "Repeat sentence",
      keywords: "repeat-sentence"
    }
  }
  },
  {
    path: 'retell-lecture', component: RetellLectureComponent,
    data: {
      title: "Retell lecture",
      metatags: {
        description: "Retell lecture",
        keywords: "retell-lecture"
      }
    }
  },
  {
    path: 'short-question', component: AnswerShortQuestionComponent, data: {
    title: "Answer short question",
    metatags: {
      description: "Answer short question",
      keywords: "short-question"
    }
  }
  },
  {
    path: 'describe-image', component: DescribeImageComponent, data: {
    title: "Describe image",
    metatags: {
      description: "Describe image",
      keywords: "describe-image"
    }
  }
  },
  {
    path: 'summarise-written-text', component: SummariseWrittenTextComponent, data: {
    title: "Summarise written text",
    metatags: {
      description: "Summarise written text",
      keywords: "summarise-written-text"
    }
  }
  },
  {
    path: 'write-from-dictation', component: WriteFromDictationComponent, data: {
    title: "Write from dictation",
    metatags: {
      description: "Write from dictation",
      keywords: "write-from-dictation"
    }
  }
  },
  {
    path: 'summarise-spoken-text', component: SummariseSpokenTextComponent, data: {
    title: "Summarise spoken text",
    metatags: {
      description: "Summarise spoken text",
      keywords: "Summarise-spoken-text"
    }
  }
  }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
