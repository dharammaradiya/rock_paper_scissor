var selectedChoice = "";

List aiSelection = ["Rock", "Paper", "Scissor"];

var resultText = "";
String selectImage = "";
String aiSelectImage = "";

void result() {
  var element = (aiSelection..shuffle()).first;

  switch (selectedChoice) {
    case "Rock":
      selectImage = "assets/images/rock.png";
      if (element == "Scissor") {
        aiSelectImage = "assets/images/scissor.png";
        resultText = "You Wins";
      } else if (element == "Rock") {
        aiSelectImage = "assets/images/rock.png";
        resultText = "Game Tie";
      } else {
        aiSelectImage = "assets/images/paper.png";
        resultText = "Ai Wins";
      }
    case "Scissor":
      selectImage = "assets/images/scissor.png";

      if (element == "Paper") {
        aiSelectImage = "assets/images/paper.png";

        resultText = "You Wins";
      } else if (element == "Scissor") {
        aiSelectImage = "assets/images/scissor.png";

        resultText = "Game Tie";
      } else {
        aiSelectImage = "assets/images/rock.png";

        resultText = "Ai Wins";
      }
    case "Paper":
      selectImage = "assets/images/paper.png";

      if (element == "Rock") {
        aiSelectImage = "assets/images/rock.png";

        resultText = "You Wins";
      } else if (element == "Paper") {
        aiSelectImage = "assets/images/paper.png";

        resultText = "Game Tie";
      } else {
        aiSelectImage = "assets/images/scissor.png";

        resultText = "Ai Wins";
      }
      break;
    default:
  }
  // if (selectedChoice == "Rock" && element == "Paper") {
  //   resultText = "Human Wins";

  // }
}
