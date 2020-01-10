<template>
  <div id="app">
    <datePicker :mode="mode" :BE='BE' :selecteFuc="selecteFuc" ref="datePicker"></datePicker>
    <!-- <div class="test">
      <span @click="change('start')">选择去程</span>
      <span @click="change('end')">选择返程</span>
      <span @click="change('range')">往返选择</span>
    </div> -->
  </div>
</template>

<script>
import datePicker from './date-picker'

export default {
  name: 'app',
  data () {
    return {
      BE: ['2019-9-12', '2019-9-15'],
      mode: 'range',
    }
  },
  methods: {
    selecteFuc(data) {
      this.$store.commit('getRiqidate',data.BE)
      // console.log(data);
    },
    change(mode) {
      this.mode = mode;
      this.$nextTick(() => {
        this.$refs.datePicker.refresh();
      })
    }
  },
  components: {
    datePicker
  }
}
</script>
<style lang="less" scoped>

</style>
