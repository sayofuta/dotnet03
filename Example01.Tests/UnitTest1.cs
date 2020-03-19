using System;
using Xunit;

namespace test
{
    public class UnitTest1
    {
        [Fact(DisplayName = "void Main true")]
        public void Example01_Main_Test()
        {
            Assert.True(true);
        }

        [Theory(DisplayName = "Class01 sample_calc")]
        //[InlineData(1)]
        [InlineData(2)]
        //[InlineData(3)]
        public void sample_calc_Test(int num)
        {
            Assert.Equal(Example01.Class01.sample_calc(num),0);
        }

    }
}
