


<!-- Script Part -->
<script setup lang="ts">

import { ref, computed } from 'vue'

const selectedSupplier = ref('') // Step 1: Add ref for selected supplier
const suppliers = ['Aromatico', 'Beans Inc.', 'Fair Trade AG', 'Farmers of Brazil', 'Handelskontor Hamburg'] // Step 2: Supplier options

const prediction = ref('')

const backendUrl = computed(() => {
  return import.meta.env.VITE_APP_BACKEND_URL
})


// Make a get request to fastapi server
const getPrediction = async () => {  
  window.console.log('fetching data')
  window.console.log(`${backendUrl.value}/score_model?supplier=${selectedSupplier.value}&quantity=${quantity.value}`)
      try {
        const response = await fetch(`${backendUrl.value}/score_model?supplier=${selectedSupplier.value}&quantity=${quantity.value}`);
        const data = await response.json();        
        window.console.log(data)
        prediction.value = data.prediction.toFixed(2);
        
      } catch (error) {
        alert('could not fetch data')
        window.console.error('Error fetching data:', error);        
      }
    }
</script>



<!-- Template Part -->
<template>
  
 <!-- Dropdown for suppliers -->
  <div>
    <label for="supplier">Please select a supplier:</label>
    <select id="supplier" v-model="selectedSupplier">
      <option v-for="supplier in suppliers" :key="supplier" :value="supplier">{{ supplier }}</option>
    </select>
    <div class="hint">Please select a supplier: {{ selectedSupplier }}</div>
  </div>

  <!-- Features -->
  <div>
    <label for="quantity">Enter Quantity:</label>
    <input id="quantity" type="number" v-model="quantity" />
    <div class="hint">Please select the ordered quantity: {{ quantity }}</div>
  </div>

  <div>
    <button type="button" @click="getPrediction()">Predict</button>
  </div>

  <div class="prediction"> Predicted number of days late: {{ prediction }}</div>
  <div> Backend URL: {{ backendUrl }}</div>
  

 
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
