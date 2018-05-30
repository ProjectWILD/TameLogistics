//Author:Matthew Tribby
//May 29, 2018
//Creates skeleton for WDYK form

//Main functionn to which parameters should be passed into
function createForm(title, people){
  var form = FormApp.create(title)
  .setTitle(title);

  setDescription(form);
  createRespondentNameItem(form);

  people.forEach(
    function(name){
    form.addMultipleChoiceItem()
    .setTitle(name)
    .setChoiceValues(['1','2','3','4','5','6'])
    .showOtherOption(true)
    .setRequired(true);
  })

  createPrefItem(form);
  createDeprefItem(form);

  Logger.log('Published URL: ' + form.getPublishedUrl());
  Logger.log('Editor URL: ' + form.getEditUrl());
}

function setDescription(form){
  //hard-coded string, fine for current purposes
  form.setDescription("This is the WDYK skeleton");
}


function createRespondentNameItem(form){
  form.addTextItem()
  .setTitle("What is your name?")
  .setRequired(true);
}

function createPrefItem(form){
  form.addTextItem()
  .setTitle("Prefs: People you don't know well but want to be in a crew with (Note: not required)");
}

function createDeprefItem(form){
  form.addTextItem()
  .setTitle("Deprefs: People you don't want to be in a crew with, no reason needed (Note: not required)");
}
