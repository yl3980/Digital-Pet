<happiness>
<!-- HTML -->

<div class="text-center" style = "margin: 35px;">
		<img show = {this.happinessLevel > 90}  src="/Assets/happyCat.jpg" height="400px" width="400px">
    <img show = {this.happinessLevel < 50}  src="/Assets/sadCat.jpg" height="400px" width="400px">
    <img show = {this.happinessLevel <=90 && this.happinessLevel>=50}  src="/Assets/originalCat.jpg" height="400px" width="400px">
    <button class="btn btn-default"   onclick={playWithCat}>Play with Cat</button>
    <button class="btn btn-default"   onclick={batheCat}>Bathe Cat</button>
</div>
<div class="text-center">
		<h3>Happiness:{happinessLevel}</h3>
    <h3>Cleanliness:{cleanlinessLevel}</h3>
    <h1 show ={this.happinessLevel < 0} > Your cat too sad to play with you. Game ends.</h1>
    <h1 show ={this.cleanlinessLevel < 0}> Your cat is so dirty that it falls ill. Game ends.<h1>
</div>

<!-- JavaScript -->
<script>
  this.happinessLevel = 70;
  this.cleanlinessLevel = 80;
  this.catPicture  = "/Assets/originalCat.jpg";

  <!-- UpdateScore -->
  playWithCat(e) {
    this.happinessLevel = this.happinessLevel + 10;
    this.cleanlinessLevel = this.cleanlinessLevel - 20;
    console.log(this.happinessLevel);
  }

  batheCat(e) {
    this.happinessLevel = this.happinessLevel - 10;
    this.cleanlinessLevel = this.cleanlinessLevel + 40;
    console.log(this.happinessLevel);
  }

</script>

</happiness>
