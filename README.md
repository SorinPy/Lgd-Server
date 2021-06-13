# Lgd-Server

[Ragezone Thread](https://forum.ragezone.com/f197/release-legend-mu-client-amp-1195391/ "Ragezone Thread")

[Original GitHub Repo](https://github.com/DimensionGamers/Lgd-Server "Original GitHub Repo") Not mine!

Works with boost 1.73



# Create account

```sql
INSERT INTO `mu_login`.`accounts` ( `account`, `password`, `email`, `security_code`, `register`, `golden_channel`, `secured` )
VALUES
    (
    'user234',
    SHA2 ( CONCAT( "user234", ":", "password" ), 256 ),
    'user@email.com',
    '12digitsphra',
    NOW( ),
    1500434821,
    1 
    ); 
```
