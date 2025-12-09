declare module '@apiverve/mimetypelookup' {
  export interface mimetypelookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface mimetypelookupResponse {
    status: string;
    error: string | null;
    data: MIMETypeLookupData;
    code?: number;
  }


  interface MIMETypeLookupData {
      extension:   string;
      mimeType:    string;
      category:    string;
      description: string;
  }

  export default class mimetypelookupWrapper {
    constructor(options: mimetypelookupOptions);

    execute(callback: (error: any, data: mimetypelookupResponse | null) => void): Promise<mimetypelookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mimetypelookupResponse | null) => void): Promise<mimetypelookupResponse>;
    execute(query?: Record<string, any>): Promise<mimetypelookupResponse>;
  }
}
