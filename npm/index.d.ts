declare module '@apiverve/mimetypelookup' {
  export interface mimetypelookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface mimetypelookupResponse {
    status: string;
    error: string | null;
    data: MIMETypeLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MIMETypeLookupData {
      extension:   null | string;
      mimeType:    null | string;
      category:    null | string;
      description: null | string;
  }

  export default class mimetypelookupWrapper {
    constructor(options: mimetypelookupOptions);

    execute(callback: (error: any, data: mimetypelookupResponse | null) => void): Promise<mimetypelookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mimetypelookupResponse | null) => void): Promise<mimetypelookupResponse>;
    execute(query?: Record<string, any>): Promise<mimetypelookupResponse>;
  }
}
