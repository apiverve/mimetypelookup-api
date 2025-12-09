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
        /// File extension to lookup (provide either extension or mimetype)
        /// Example: pdf
        /// </summary>
        [JsonProperty("extension")]
        public string Extension { get; set; }

        /// <summary>
        /// MIME type to lookup (provide either extension or mimetype)
        /// Example: application/pdf
        /// </summary>
        [JsonProperty("mimetype")]
        public string Mimetype { get; set; }
    }
}
