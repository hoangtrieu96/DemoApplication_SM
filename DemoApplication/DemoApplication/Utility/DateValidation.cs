using System;
using System.ComponentModel.DataAnnotations;

namespace DemoApplication.Utility
{
    public class DateValidation : ValidationAttribute
    {
        public override bool IsValid(object value)
        {
            // Check if the date is today or before.
            DateTime date = Convert.ToDateTime(value);
            return (date > (new DateTime()));
        }
    }
}