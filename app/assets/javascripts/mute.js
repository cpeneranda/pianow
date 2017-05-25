function onYouTubeIframeAPIReady() {
var player;
player = new YT.Player('#my-video', {
events: {
onReady: function(e) {
e.target.mute();
}
}
});
}
