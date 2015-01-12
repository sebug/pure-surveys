module Main where

import Debug.Trace
import Data.Array

type Question = {
    code :: String,
    prompt :: String,
    answer :: String
  }

type Questionnaire = {
   title :: String,
   code :: String,
   description :: String,
   questions :: [Question]
  }

type Answer = {
    code :: String,
    answer :: String
  }

questionnaire1 :: Questionnaire
questionnaire1 = {
    title: "PureScript survey",
    code: "PSS",
    description: "Some questions about PureScript",
    questions: [
      { code: "Q1", prompt: "How did you find out about PureScript?", answer: "" },
      { code: "Q2", prompt: "When do you plan to introduce it in your company?", answer: "" }
               ]
  }

questionnaire2 :: Questionnaire
questionnaire2 = {
  title: "JavaScript disillusion",
  code: "JSD",
  description: "Tries to assess how fed up you are with JavaScript",
  questions: [
    { code: "Q3", prompt: "Do you look forward to work with JS every day?", answer: "" }
    ]
  }

sampleQuestionnaires :: [Questionnaire]
sampleQuestionnaires = [ questionnaire1, questionnaire2 ]

extractAnswer :: Question -> Answer
extractAnswer q = { code: q.code, answer: q.answer }

extractAnswers :: [Questionnaire] -> [Answer]
extractAnswers questionnaires = concatMap (\quest -> map extractAnswer quest.questions) questionnaires

main = do
  trace "Hello sailor!"
