﻿class powershot extends MovieClip {
	var speed;
	var drift;
	var type;
	var chain;
	function onLoad() {
		chain = 0;
		type = Math.floor(Math.random()*2+1);
		drift = Math.random()*10;
		speed = 30;
		_y = 450;
		_x = Math.random()*500+25;
	}
	function onEnterFrame() {
		_y -= speed;
		if (this.hitTest(_root.hmshr)) {
			var goflash = _root.attachMovie("flashing", "flashing"+_root.getNextHighestDepth(), _root.getNextHighestDepth());
			_root.deathcounter.pain += 1;
			this.removeMovieClip();
		}
		if (_x>600) {
			this.removeMovieClip();
		}
		if (_x<0) {
			this.removeMovieClip();
		}
		if (_y<-100) {
			this.removeMovieClip();
		}
		if (_y>650) {
			this.removeMovieClip();
		}
		if (type == 1) {
			_x += drift;
		}
		if (type == 2) {
			_x -= drift;
		}
		if(_root.fx.effect>3){
			this.removeMovieClip();
		}
	}
}
