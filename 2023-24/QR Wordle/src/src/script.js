"use strict";
let images = [];
for(let i=0;i<64;i++){
    images.push(document.getElementById("part-"+i));
}
let state = [];
for(let i=0;i<64;i++) state.push(i);
function random_shuffle(arr){
    return arr.sort( ()=>Math.random()-0.5 );
}

function checkState(curState){
    var xhr = new XMLHttpRequest();
    var url = "./api.php";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var json = JSON.parse(xhr.responseText);
            handleResponse(json);
        }
    };
    var data = JSON.stringify(curState);
    xhr.send(data);
}

function handleResponse(data){
    colorise(data);
}

function assemble(curState){
    for(let i=0;i<64;i++){
        let row = Math.floor(curState[i]/8);
        let col = curState[i]%8;
        images[i].style.left = 10*col+'vmin';
        images[i].style.top = 10*row+'vmin';
    }
}

function colorise(data){
    for(let i=0;i<64;i++){
        images[i].classList.remove('yellow');
        images[i].classList.remove('green');
        if(data[i] == 1)images[i].classList.add("yellow");
        if(data[i] == 2)images[i].classList.add("green");
    }
}

assemble(state);
checkState(state);

function randomize(){
    state = random_shuffle(state);
    checkState(state);
    assemble(state);
}