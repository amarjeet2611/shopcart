// keycloak.js
import Keycloak from 'keycloak-js';

const keycloakConfig = {
  url: 'shopcartlb-494553550.us-east-1.elb.amazonaws.com',
  realm: 'sso-amarjeet',
  clientId: 'shopcart',
  clientSecret: 'sCwKRbAt4mtkjRC3kgZLriPghyqM07Aq'
};

const keycloakInst = new Keycloak(keycloakConfig);

export default keycloakInst;
