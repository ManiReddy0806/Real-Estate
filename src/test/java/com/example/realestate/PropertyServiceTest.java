package com.example.realestate;

import com.example.realestate.model.Property;
import com.example.realestate.repository.PropertyRepository;
import com.example.realestate.service.PropertyService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Collections;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class PropertyServiceTest {

    @Mock
    private PropertyRepository propertyRepository;

    @InjectMocks
    private PropertyService propertyService;

    @Test
    void testListAll() {
        Property p = new Property();
        p.setTitle("Test Property");

        when(propertyRepository.findAll())
                .thenReturn(Collections.singletonList(p));

        List<Property> result = propertyService.listAll();

        assertThat(result).hasSize(1);
        assertThat(result.get(0).getTitle()).isEqualTo("Test Property");
    }
}
