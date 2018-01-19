import { TestBed, inject } from '@angular/core/testing';

import { PteHttpService } from './pte-http.service';

describe('PteHttpService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [PteHttpService]
    });
  });

  it('should be created', inject([PteHttpService], (service: PteHttpService) => {
    expect(service).toBeTruthy();
  }));
});
