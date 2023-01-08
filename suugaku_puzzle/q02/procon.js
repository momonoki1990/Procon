const reverse = (s) => {
  let reversed = "";
  for (let i = 0; i < s.length; i++) {
    reversed = s[i] + reversed;
  }
  return reversed;
};

const result = [];
const operators = ["", "*"];
for (let num = 1000; num <= 9999; num++) {
  for (let i = 0; i < operators.length; i++) {
    for (let j = 0; j < operators.length; j++) {
      for (let k = 0; k < operators.length; k++) {
        if (operators[i] === "" && operators[j] === "" && operators[k] === "") {
          continue;
        }
        const numStr = String(num);
        const formula =
          numStr[0] +
          operators[i] +
          numStr[1] +
          operators[j] +
          numStr[2] +
          operators[k] +
          numStr[3];
        // console.log(formula);
        const sum = eval(formula);
        console.log(numStr, String(sum));
        if (reverse(numStr) === String(sum)) {
          result.push(num);
        }
      }
    }
  }
}
console.log(result);
