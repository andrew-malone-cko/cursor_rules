# {Feature Name} API Documentation

## API Overview

### Base URL

- Development: `http://localhost:3000/api/{feature-name}`
- Production: `https://api.example.com/{feature-name}`

### Authentication

- Required headers
- Token format
- Refresh process

## Endpoints

### `GET /{endpoint-name}`

#### Purpose

Brief description of what this endpoint does

#### Request

```typescript
interface GetEndpointRequest {
  param1: string;
  param2?: number;
}
```

#### Response

```typescript
interface GetEndpointResponse {
  data: {
    id: string;
    name: string;
    // ... other fields
  };
  metadata: {
    timestamp: string;
    // ... other metadata
  };
}
```

#### Example

```bash
curl -X GET "http://localhost:3000/api/{feature-name}/{endpoint-name}?param1=value1&param2=42" \
  -H "Authorization: Bearer {token}"
```

#### Error Handling

- 400: Bad Request
  - Invalid parameters
  - Missing required fields
- 401: Unauthorized
  - Invalid token
  - Expired token
- 403: Forbidden
  - Insufficient permissions
- 404: Not Found
  - Resource doesn't exist
- 500: Internal Server Error
  - Unexpected server issues

### `POST /{endpoint-name}`

#### Purpose

Brief description of what this endpoint does

#### Request Body

```typescript
interface PostEndpointRequest {
  field1: string;
  field2: {
    subField1: number;
    subField2?: string[];
  };
}
```

#### Response

```typescript
interface PostEndpointResponse {
  success: boolean;
  data: {
    id: string;
    // ... other fields
  };
}
```

#### Example

```bash
curl -X POST "http://localhost:3000/api/{feature-name}/{endpoint-name}" \
  -H "Authorization: Bearer {token}" \
  -H "Content-Type: application/json" \
  -d '{
    "field1": "value1",
    "field2": {
      "subField1": 42,
      "subField2": ["value1", "value2"]
    }
  }'
```

## Data Models

### {ModelName}

```typescript
interface {ModelName} {
  id: string;
  createdAt: string;
  updatedAt: string;
  // ... other fields
}
```

## Error Handling

### Error Response Format

```typescript
interface ErrorResponse {
  error: {
    code: string;
    message: string;
    details?: unknown;
  };
}
```

### Common Error Codes

- `INVALID_REQUEST`: Request validation failed
- `UNAUTHORIZED`: Authentication required
- `FORBIDDEN`: Permission denied
- `NOT_FOUND`: Resource not found
- `INTERNAL_ERROR`: Server error

## Rate Limiting

### Limits

- Requests per minute: X
- Requests per hour: Y
- Requests per day: Z

### Headers

- `X-RateLimit-Limit`
- `X-RateLimit-Remaining`
- `X-RateLimit-Reset`

## Versioning

### Current Version

- API Version: v1
- Changelog location
- Deprecation policy

### Version Header

- `Accept: application/vnd.api+json;version=1`

## Testing

### Postman Collection

- Collection link
- Environment setup
- Test cases

### Curl Examples

- Authentication
- CRUD operations
- Error scenarios
