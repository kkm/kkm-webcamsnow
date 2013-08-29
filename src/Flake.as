package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.filters.*;

    public class Flake extends Sprite
    {
        public var vx:Number;
        public var vy:Number;
        public var spin:Number;
        private var radius:Object;
        private var crystal:Array;
        private var angle:Number = 0;
        private var crystalNumber:Object;

        public function Flake()
        {
            ;
            crystal = new Array();
            crystalNumber = 4;
            radius = 40;
            spin = Math.random() * 0.3;
            buildCrystals();
            return;
            ;
        }// end function

        public function get scale() : Number
        {
            ;
            return scaleX;
            ;
        }// end function

        public function setCrystals() : void
        {
            ;
            var _loc_1:uint = 0;
            while (_loc_1 < crystalNumber)
            {
                
                _loc_1 = _loc_1 + 1;
            }
            return;
            ;
        }// end function

        private function init()
        {
            
            vx = 0;
            vy = 0;
            var _loc_1:* = Math.ceil(scaleX * 10);
            filters = [new BlurFilter(_loc_1, _loc_1)];
            return;
            
        }// end function

        public function set scale(param1:Number)
        {
            
            scaleX = param1;
            scaleY = param1;
            init();
            return;
            
        }// end function

        public function buildCrystals() : void
        {
            ;
            var _loc_2:Crystal = null;
            var _loc_3:Number = NaN;
            var _loc_1:uint = 0;
            while (_loc_1 < crystalNumber)
            {
                
                _loc_2 = new Crystal();
                _loc_3 = 5 + Math.random() * 5;
                _loc_2.graphics.beginFill(16777215, 1);
                _loc_2.graphics.moveTo(-_loc_3, 0);
                _loc_2.graphics.curveTo(0, (-_loc_3) / 2, _loc_3, 0);
                _loc_2.graphics.curveTo(_loc_3 * 0.88, _loc_3 * 0.88, 0, _loc_3);
                _loc_2.graphics.curveTo((-_loc_3) * 0.88, _loc_3 * 0.88, -_loc_3, 0);
                _loc_2.graphics.endFill();
                crystal.push(_loc_2);
                addChild(crystal[(crystal.length - 1)]);
                _loc_1 = _loc_1 + 1;
            }
            setCrystals();
            addEventListener(Event.ENTER_FRAME, loop);
            return;
            ;
        }// end function

        private function loop(event:Event) : void
        {
            ;
            angle = angle + spin;
            var _loc_2:* = 0;
            while (_loc_2 < crystalNumber)
            {
                
                _loc_2 = _loc_2 + 1;
            }
            return;
            ;
        }// end function

    }
}
