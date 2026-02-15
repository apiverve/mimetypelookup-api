using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MIMETypeLookup
{
    /// <summary>
    /// Query options for the MIME Type Lookup API
    /// </summary>
    public class MIMETypeLookupQueryOptions
    {
        /// <summary>
        /// File extension to lookup (without the leading dot)
        /// </summary>
        [JsonProperty("extension")]
        public string Extension { get; set; }
    }
}
