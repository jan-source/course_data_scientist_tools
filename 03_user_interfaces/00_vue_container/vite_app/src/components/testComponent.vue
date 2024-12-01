


<!-- Script Part -->
<script setup lang="ts">


// Make a get request to fastapi server
const sampleFunc =  () => {  
      window.console.log('test function')
    }
</script>



<!-- Template Part -->
<template>
  
 <!-- Dropdown for suppliers -->
  <div>
    My Test Component
  </div>
 
</template>

<style scoped>

div {  
  margin: 1em;
  text-align: right;
}

label {  
  margin-right: 1em;
}

button {
  font-size: 1em;
  padding: 0.5em 1em;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.hint {
  font-size: 0.8em;
  color: #888;
}

.prediction {
  font-size: 1.5em;
  margin: 1em;
  color: cadetblue;
  text-align: center;
}
</style>
