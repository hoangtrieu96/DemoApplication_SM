using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web;

namespace DemoApplication.Utility
{
    public class DateValidation : ValidationAttribute
    {
        public override bool IsValid(object value)
        {
            DateTime date;
            string format = "MM/dd/yyyy";
            bool isParsed = DateTime.TryParseExact(Convert.ToString(value), format, CultureInfo.CurrentCulture, DateTimeStyles.None, out date);
            return isParsed;
        }
    }
}