.class public Lic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lil;Lin;)Lio;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lio;

    invoke-direct {v0}, Lio;-><init>()V

    .line 63
    const-string v1, ""

    invoke-virtual {v0, v1}, Lio;->d(Ljava/lang/String;)V

    .line 64
    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/Integer;)V

    .line 65
    const-string v1, ""

    invoke-virtual {v0, v1}, Lio;->b(Ljava/lang/String;)V

    .line 67
    sget-object v1, Lid;->a:[I

    invoke-virtual {p0}, Lil;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    const-string v1, "https://mbb.paas.isbanbr.dev.corp/"

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/String;)V

    .line 71
    const-string v1, "MIIFtzCCBJ+gAwIBAgITMgAAB12Q237ojhv39AAAAAAHXTANBgkqhkiG9w0BAQsF\nADBoMRQwEgYKCZImiZPyLGQBGRYEY29ycDEaMBgGCgmSJomT8ixkARkWCnByb2R1\nYmFuYnIxFTATBgoJkiaJk/IsZAEZFgVwcmJicjEdMBsGA1UEAxMUQ0EtSW50ZXJu\nYS1TYW50YW5kZXIwHhcNMTcwNjA1MTYzMzQ4WhcNMjAwNjA1MTY0MzQ4WjCBizEL\nMAkGA1UEBhMCQlIxEjAQBgNVBAgTCVNhbyBQYXVsbzESMBAGA1UEBxMJU2FvIFBh\ndWxvMRgwFgYDVQQKEw9HUlVQTyBTQU5UQU5ERVIxGDAWBgNVBAsTD0RJVklTSU9O\nIEJSQVNJTDEgMB4GA1UEAxQXKi5wYWFzLmlzYmFuYnIuZGV2LmNvcnAwggEiMA0G\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDFtYVra2TRSpIAIQeDpjpxM80xUN9S\noOR6rFx7WCAmLIfxCOr1/kw8q3pT/SEdodBEl/bfC6An7l42XUZwcZ7oJjEYqC+D\ntoHtYS9rAXakIJI2/g4RjwUxy2klVb8O/9BITVFUVvO7fX2ZEEA3K/NvdnMS8CQl\nYjfQOWs4n5ajS1zTkRArGRULXUzzIte8YrYcd1DZ6IYa9IFsMWnJZStDbZhMcsIg\nVURlcWAKxkWRdKNa48CFbrHasGf91YaGr5U11E16cgWn1xiJNXzJPksh6/fQlNlU\no3Ub70JYk1u18f/eEFWB8S5RqSFJBlKCBLNXNcW8HQ1dN16nh2ZDel3BAgMBAAGj\nggI0MIICMDAiBgNVHREEGzAZghcqLnBhYXMuaXNiYW5ici5kZXYuY29ycDAdBgNV\nHQ4EFgQU0ZCAkqWJ1KUMNQVUV8ZGIL+FmpowHwYDVR0jBBgwFoAUwVAcLy3lG00n\nihJ5XsG+ndfo184wgeUGA1UdHwSB3TCB2jCB16CB1KCB0YaBzmxkYXA6Ly8vQ049\nQ0EtSW50ZXJuYS1TYW50YW5kZXIsQ049c3J2bWJzcHZ3YnIyMSxDTj1DRFAsQ049\nUHVibGljJTIwS2V5JTIwU2VydmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJh\ndGlvbixEQz1wcmJicixEQz1wcm9kdWJhbmJyLERDPWNvcnA/Y2VydGlmaWNhdGVS\nZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBv\naW50MIHTBggrBgEFBQcBAQSBxjCBwzCBwAYIKwYBBQUHMAKGgbNsZGFwOi8vL0NO\nPUNBLUludGVybmEtU2FudGFuZGVyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT\nZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXByYmJyLERD\nPXByb2R1YmFuYnIsREM9Y29ycD9jQUNlcnRpZmljYXRlP2Jhc2U/b2JqZWN0Q2xh\nc3M9Y2VydGlmaWNhdGlvbkF1dGhvcml0eTAMBgNVHRMBAf8EAjAAMA0GCSqGSIb3\nDQEBCwUAA4IBAQAah0CoFJRRxwNrZc3FZNmWI3GbRmT/05systZgHNBgt90TRd16\nd7MMeyaJW/+r6OtNzPaGGD7UBKARaYjA3Ed3v+6wB3rYR/vyQUOfAEn7hh/DORHy\nCXoBw8EuJKRI6UztyuH/dAgOTmg5YlNF7U1anWiYBRznO6EfCRJ1vwMrKGXcA34p\ndrxm85WWhCpfNriV42xdqK1lnpzZPGgLvJjhmZjyaXiXHp5FKNdDdBf/hFPRYZQo\n/zbCE0DkPuj2J4o8wLcTsZ9eIpzqXNHbxsAac5wl1A74z2MMC5m3JIHehVQxsIiP\nVw90e5I0TIu9ugGOT/PWgZrcfSP+WhM45ASP"

    invoke-virtual {v0, v1}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v1, "https://mbbhk.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/String;)V

    .line 75
    const-string v1, "MIIDwzCCAqugAwIBAgIQRATmR7GhKJtMiYiF1GaPEDANBgkqhkiG9w0BAQsFADBo\nMRQwEgYKCZImiZPyLGQBGRYEY29ycDEaMBgGCgmSJomT8ixkARkWCnByb2R1YmFu\nYnIxFTATBgoJkiaJk/IsZAEZFgVwcmJicjEdMBsGA1UEAxMUQ0EtSW50ZXJuYS1T\nYW50YW5kZXIwHhcNMTUwNzE2MTgzMTE5WhcNMzUwNzE2MTg0MTE5WjBoMRQwEgYK\nCZImiZPyLGQBGRYEY29ycDEaMBgGCgmSJomT8ixkARkWCnByb2R1YmFuYnIxFTAT\nBgoJkiaJk/IsZAEZFgVwcmJicjEdMBsGA1UEAxMUQ0EtSW50ZXJuYS1TYW50YW5k\nZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDyslfkQop/oFqkTdt2\n7xFj8i7P4RkzuQTBFlFMZIyEbBNFsfqTz0FNgD6VHpNuQXOShFsry+7vhLpg/3eo\nAq6gRRNPChLjMsL7qR1aNqRvSSzHLz6hlYKLblKcRO9iC9+Q4pm9VVwMqoAvw9EP\nirytQM3EN0gub0MtJoPmY/GiubS+hqWcaMIOolKgZ+vxTFGbGyFmUnds4V6xvIBP\nvP2RpuwVUf6HbibDD6FrExENPIESSZe0UWTDmhrDX1CcaZCafI9l7bqIyykIGuxI\nnQPVS5UWKl9iAuI7KoPb82HXdbo6IBcO0wDRVVN2Q4nAM6MTqAl8VC2lEJJ5Ujyg\nqDejAgMBAAGjaTBnMBMGCSsGAQQBgjcUAgQGHgQAQwBBMA4GA1UdDwEB/wQEAwIB\nhjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTBUBwvLeUbTSeKEnlewb6d1+jX\nzjAQBgkrBgEEAYI3FQEEAwIBADANBgkqhkiG9w0BAQsFAAOCAQEAbtt5Ejpu/gPE\n/BSU0CKuJPk8WFqZZ+HueZN3VogveuSoNdQiyDGO1abY6tres+MZE1SYZLaiqs4J\nUXWGpodmDBe23lglSoiDcWX+1/+QPSwwX2SwSY/R8IOlNwcw4XanWL7wRllB6MIW\n1gRKYTvct2iL8OUBChSSMS30lG5/eTG1D5by6bTNyvcQCAJOLW1xHGhojZWuTNS2\nVXDe5Rj4tNLidO+kT7pJkCRz/6K+J3fcm125KNitmnhmvP4Zil4ZYZ0Hxp97Knzt\nOeSaeDb3RsFyd9IvrLGGN+C78xtjrYMe2yGNJVlWa/iXFjuyGo+7NMl0mI/XXfUV\nCPRBhS7RqA=="

    invoke-virtual {v0, v1}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v1, "https://mbbhk.santander.com.br/"

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/String;)V

    .line 79
    const-string v1, "MIIFVTCCBD2gAwIBAgIQOygCew/pVnsAAAAAUN95UjANBgkqhkiG9w0BAQsFADCB\nujELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xKDAmBgNVBAsT\nH1NlZSB3d3cuZW50cnVzdC5uZXQvbGVnYWwtdGVybXMxOTA3BgNVBAsTMChjKSAy\nMDEyIEVudHJ1c3QsIEluYy4gLSBmb3IgYXV0aG9yaXplZCB1c2Ugb25seTEuMCwG\nA1UEAxMlRW50cnVzdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAtIEwxSzAeFw0x\nNzEyMTkwODM0MjZaFw0xOTAyMjgwOTA0MjZaMIGKMQswCQYDVQQGEwJFUzESMBAG\nA1UECBMJU2FudGFuZGVyMRIwEAYDVQQHEwlTYW50YW5kZXIxGDAWBgNVBAoTD0dS\nVVBPIFNBTlRBTkRFUjEYMBYGA1UECxMPRElWSVNJT04gQlJBU0lMMR8wHQYDVQQD\nExZtYmJoay5zYW50YW5kZXIuY29tLmJyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A\nMIIBCgKCAQEAszQN08VrjQPTmkJebR6Z2V417gTyrz77dXHkchFmayPVRdOrXjbS\nj+L/C3E8AsCD2gp3Z573X4CHx82NwrGpJ9PKjf5rGhmUtC6Ab347ATNzK8j5ss1G\nlkknDi537rKDTm/jZ26VHonDWgI0sVwDAn+bYnUYHnQnNYgWG4k4wGXiIOYQN2pK\neVCCzMA2RH7TiRSBkb6wW+86E/W9G9X1L9VC6W2/CvgmVfjcgWRbwZWNu74GUsFH\nQ10iH7dtru/DGwzuVIlmOuMhAq+WNYnaqRhuGYArjIfPVvs1mSJ+i5MEAS/9+GTI\nSIoF9LKdPKXtRqynnavcoGKOB5ij8ffE4QIDAQABo4IBgzCCAX8wDgYDVR0PAQH/\nBAQDAgWgMBMGA1UdJQQMMAoGCCsGAQUFBwMBMDMGA1UdHwQsMCowKKAmoCSGImh0\ndHA6Ly9jcmwuZW50cnVzdC5uZXQvbGV2ZWwxay5jcmwwSwYDVR0gBEQwQjA2Bgpg\nhkgBhvpsCgEFMCgwJgYIKwYBBQUHAgEWGmh0dHA6Ly93d3cuZW50cnVzdC5uZXQv\ncnBhMAgGBmeBDAECAjBoBggrBgEFBQcBAQRcMFowIwYIKwYBBQUHMAGGF2h0dHA6\nLy9vY3NwLmVudHJ1c3QubmV0MDMGCCsGAQUFBzAChidodHRwOi8vYWlhLmVudHJ1\nc3QubmV0L2wxay1jaGFpbjI1Ni5jZXIwIQYDVR0RBBowGIIWbWJiaGsuc2FudGFu\nZGVyLmNvbS5icjAfBgNVHSMEGDAWgBSConB03bxTP8971PfNf6dgxgpMvzAdBgNV\nHQ4EFgQUsIItxFp5MicEaZbGcanRrryEu44wCQYDVR0TBAIwADANBgkqhkiG9w0B\nAQsFAAOCAQEAwDJKvQCoCN1I+nQ2lbvfzL+T4Rf749K2Ut9q/BUuu6bFfrJ9bJwl\nVgX+FsVrn+mjU9fOnXPoRpzjfeTt+8vslCKJT7n1xYygDEBrm9klsCeqWEePS03o\nT3E2OfplwQVsiPH3v++msPsPSjG3H34Pf9QoT8d7nF2twqP9pLnqx4JYpsn1k8jQ\nqW1FF9eDXF1Cnech1//KsJfd4GHqqzoqMr7CMYjGRgLda0IpphDWy592WIqPj/Pe\nVCXzSSVqLLX1xo1/Xloiq6/WHqRbJJSNNKWcDgGzcWJ9f+WuqCbQfWCtd63J1Qy9\ni0PEK5pH4VwiNOXZ093xDQwdXPVYZ9JQoA=="

    invoke-virtual {v0, v1}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v1, "https://mbbdeploy.santander.com.br/"

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/String;)V

    .line 83
    const-string v1, "MIIFXjCCBEagAwIBAgIRAI1GlyC41iNsAAAAAFDdqH0wDQYJKoZIhvcNAQELBQAw\ngboxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1FbnRydXN0LCBJbmMuMSgwJgYDVQQL\nEx9TZWUgd3d3LmVudHJ1c3QubmV0L2xlZ2FsLXRlcm1zMTkwNwYDVQQLEzAoYykg\nMjAxMiBFbnRydXN0LCBJbmMuIC0gZm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkxLjAs\nBgNVBAMTJUVudHJ1c3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBMMUswHhcN\nMTcwODExMDYzMDM2WhcNMTgwODEwMDcwMDM1WjCBjjELMAkGA1UEBhMCRVMxEjAQ\nBgNVBAgTCVNhbnRhbmRlcjESMBAGA1UEBxMJU2FudGFuZGVyMRgwFgYDVQQKEw9H\nUlVQTyBTQU5UQU5ERVIxGDAWBgNVBAsTD0RJVklTSU9OIEJSQVNJTDEjMCEGA1UE\nAxMabWJiZGVwbG95LnNhbnRhbmRlci5jb20uYnIwggEiMA0GCSqGSIb3DQEBAQUA\nA4IBDwAwggEKAoIBAQCzUPY9oMCqtsd1+Ffca9fwmgbu8oa33FF8x/KmdXoGLF+2\nKYYtHuf/vhr4s7PKmCznT9PZ2u5YhmteewqI8FP2zjIDOTYHjhyaV9fkpBWfRNqZ\nstP2X6HPqKViCjcRenQnaQW+36fKJf4aKDPi39h6tUlbbXF89RLChAgLFlg9Rlz8\nqJ+BlFFG0ioiiY0Rm+sDscNgudz/vKQSqbTwoyMHKMEG79IO0ow+KeSzKUs8875i\nhCv3Yus2lYwwk+9xMUp17KpRA4hg+HwFOqED+ykoDHMb9h5smH8FycbBg0X2dwA+\nSHim6/LETPBFVspawWftu6ImaloQ2ZJtzfTRxos3AgMBAAGjggGHMIIBgzAOBgNV\nHQ8BAf8EBAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwEwMwYDVR0fBCwwKjAooCag\nJIYiaHR0cDovL2NybC5lbnRydXN0Lm5ldC9sZXZlbDFrLmNybDBLBgNVHSAERDBC\nMDYGCmCGSAGG+mwKAQUwKDAmBggrBgEFBQcCARYaaHR0cDovL3d3dy5lbnRydXN0\nLm5ldC9ycGEwCAYGZ4EMAQICMGgGCCsGAQUFBwEBBFwwWjAjBggrBgEFBQcwAYYX\naHR0cDovL29jc3AuZW50cnVzdC5uZXQwMwYIKwYBBQUHMAKGJ2h0dHA6Ly9haWEu\nZW50cnVzdC5uZXQvbDFrLWNoYWluMjU2LmNlcjAlBgNVHREEHjAcghptYmJkZXBs\nb3kuc2FudGFuZGVyLmNvbS5icjAfBgNVHSMEGDAWgBSConB03bxTP8971PfNf6dg\nxgpMvzAdBgNVHQ4EFgQUzW1t3zRKqrB3xVWHthUhAYN7ep4wCQYDVR0TBAIwADAN\nBgkqhkiG9w0BAQsFAAOCAQEAxf/FQYw4fq6GBkYh+AStexg1M8L3kBbTBMRw2SLa\n6tvDgloazkZ9LGlzDtNCdEGzC7OJtjRdQrZ4Wy+ODkE5xiZgFXvKyV3COxjHc9UB\nmlDeaIDtqyTYnnY1gWSimXEP5VT8VXiC6D4FH6FirRwB0dPglN6mAdv9dj0cVAMT\n5RI6l8IOp9Jz+8eR93nTiR/b05T/0MLLGwx/c/mdGYqr8ogblpmQP+iMMLn6jCeR\nKK9vbyNvtEm2nkhqqe/RP7pJiiAhiuuSETiQntcvqqMCzJYpv/alhgLFG212Hz98\n1QRtM+/3K0fvVZG3+Ea+gTtoxyodtvYwV0CXFBWwnM+XcQ=="

    invoke-virtual {v0, v1}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v1, "https://mbbocu.santander.com.br/"

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/String;)V

    .line 87
    const-string v1, "MIIFXjCCBEagAwIBAgIRAI1GlyC41iNsAAAAAFDdqH0wDQYJKoZIhvcNAQELBQAw\ngboxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1FbnRydXN0LCBJbmMuMSgwJgYDVQQL\nEx9TZWUgd3d3LmVudHJ1c3QubmV0L2xlZ2FsLXRlcm1zMTkwNwYDVQQLEzAoYykg\nMjAxMiBFbnRydXN0LCBJbmMuIC0gZm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkxLjAs\nBgNVBAMTJUVudHJ1c3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBMMUswHhcN\nMTcwODExMDYzMDM2WhcNMTgwODEwMDcwMDM1WjCBjjELMAkGA1UEBhMCRVMxEjAQ\nBgNVBAgTCVNhbnRhbmRlcjESMBAGA1UEBxMJU2FudGFuZGVyMRgwFgYDVQQKEw9H\nUlVQTyBTQU5UQU5ERVIxGDAWBgNVBAsTD0RJVklTSU9OIEJSQVNJTDEjMCEGA1UE\nAxMabWJiZGVwbG95LnNhbnRhbmRlci5jb20uYnIwggEiMA0GCSqGSIb3DQEBAQUA\nA4IBDwAwggEKAoIBAQCzUPY9oMCqtsd1+Ffca9fwmgbu8oa33FF8x/KmdXoGLF+2\nKYYtHuf/vhr4s7PKmCznT9PZ2u5YhmteewqI8FP2zjIDOTYHjhyaV9fkpBWfRNqZ\nstP2X6HPqKViCjcRenQnaQW+36fKJf4aKDPi39h6tUlbbXF89RLChAgLFlg9Rlz8\nqJ+BlFFG0ioiiY0Rm+sDscNgudz/vKQSqbTwoyMHKMEG79IO0ow+KeSzKUs8875i\nhCv3Yus2lYwwk+9xMUp17KpRA4hg+HwFOqED+ykoDHMb9h5smH8FycbBg0X2dwA+\nSHim6/LETPBFVspawWftu6ImaloQ2ZJtzfTRxos3AgMBAAGjggGHMIIBgzAOBgNV\nHQ8BAf8EBAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwEwMwYDVR0fBCwwKjAooCag\nJIYiaHR0cDovL2NybC5lbnRydXN0Lm5ldC9sZXZlbDFrLmNybDBLBgNVHSAERDBC\nMDYGCmCGSAGG+mwKAQUwKDAmBggrBgEFBQcCARYaaHR0cDovL3d3dy5lbnRydXN0\nLm5ldC9ycGEwCAYGZ4EMAQICMGgGCCsGAQUFBwEBBFwwWjAjBggrBgEFBQcwAYYX\naHR0cDovL29jc3AuZW50cnVzdC5uZXQwMwYIKwYBBQUHMAKGJ2h0dHA6Ly9haWEu\nZW50cnVzdC5uZXQvbDFrLWNoYWluMjU2LmNlcjAlBgNVHREEHjAcghptYmJkZXBs\nb3kuc2FudGFuZGVyLmNvbS5icjAfBgNVHSMEGDAWgBSConB03bxTP8971PfNf6dg\nxgpMvzAdBgNVHQ4EFgQUzW1t3zRKqrB3xVWHthUhAYN7ep4wCQYDVR0TBAIwADAN\nBgkqhkiG9w0BAQsFAAOCAQEAxf/FQYw4fq6GBkYh+AStexg1M8L3kBbTBMRw2SLa\n6tvDgloazkZ9LGlzDtNCdEGzC7OJtjRdQrZ4Wy+ODkE5xiZgFXvKyV3COxjHc9UB\nmlDeaIDtqyTYnnY1gWSimXEP5VT8VXiC6D4FH6FirRwB0dPglN6mAdv9dj0cVAMT\n5RI6l8IOp9Jz+8eR93nTiR/b05T/0MLLGwx/c/mdGYqr8ogblpmQP+iMMLn6jCeR\nKK9vbyNvtEm2nkhqqe/RP7pJiiAhiuuSETiQntcvqqMCzJYpv/alhgLFG212Hz98\n1QRtM+/3K0fvVZG3+Ea+gTtoxyodtvYwV0CXFBWwnM+XcQ=="

    invoke-virtual {v0, v1}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_5
    const-string v1, "https://m.santander.com.br/"

    invoke-virtual {v0, v1}, Lio;->a(Ljava/lang/String;)V

    .line 91
    const-string v1, "MIIETzCCAzegAwIBAgIDAjpvMA0GCSqGSIb3DQEBCwUAMEIxCzAJBgNVBAYTAlVT\nMRYwFAYDVQQKEw1HZW9UcnVzdCBJbmMuMRswGQYDVQQDExJHZW9UcnVzdCBHbG9i\nYWwgQ0EwHhcNMTMxMTA1MjEzNjUwWhcNMjIwNTIwMjEzNjUwWjBEMQswCQYDVQQG\nEwJVUzEWMBQGA1UEChMNR2VvVHJ1c3QgSW5jLjEdMBsGA1UEAxMUR2VvVHJ1c3Qg\nU1NMIENBIC0gRzMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDjvn4K\nhqPPa209K6GXrUkkTdd3uTR5CKWeop7eRxKSPX7qGYax6E89X/fQp3eaWx8KA7UZ\nU9ulIZRpY51qTJEMEEe+EfpshiW3qwRoQjgJZfAU2hme+msLq2LvjafvY3AjqK+B\n89FuiGdT7BKkKXWKp/JXPaKDmJfyCn3U50NuMHhiIllZuHEnRaoPZsZVP/oyFysx\nj0ag+mkUfJ2fWuLrM04QprPtd2PYw5703d95mnrU7t7dmszDt6ldzBE6B7tvl6QB\nI0eVH6N3+liSxsfQvc+TGEK3fveeZerVO8rtrMVwof7UEJrwEgRErBpbeFBFV0xv\nvYDLgVwts7x2oR5lAgMBAAGjggFKMIIBRjAfBgNVHSMEGDAWgBTAephojYn7qwVk\nDBF9qn1luMrMTjAdBgNVHQ4EFgQU0m/3lvSFP3I8MH0j2oV4m6N8WnwwEgYDVR0T\nAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwNgYDVR0fBC8wLTAroCmgJ4Yl\naHR0cDovL2cxLnN5bWNiLmNvbS9jcmxzL2d0Z2xvYmFsLmNybDAvBggrBgEFBQcB\nAQQjMCEwHwYIKwYBBQUHMAGGE2h0dHA6Ly9nMi5zeW1jYi5jb20wTAYDVR0gBEUw\nQzBBBgpghkgBhvhFAQc2MDMwMQYIKwYBBQUHAgEWJWh0dHA6Ly93d3cuZ2VvdHJ1\nc3QuY29tL3Jlc291cmNlcy9jcHMwKQYDVR0RBCIwIKQeMBwxGjAYBgNVBAMTEVN5\nbWFudGVjUEtJLTEtNTM5MA0GCSqGSIb3DQEBCwUAA4IBAQCg1Pcs+3QLf2TxzUNq\nn2JTHAJ8mJCi7k9o1CAacxI+d7NQ63K87oi+fxfqd4+DYZVPhKHLMk9sIb7SaZZ9\nY73cK6gf0BOEcP72NZWJ+aZ3sEbIu7cT9clgadZM/tKO79NgwYCA4ef7i28heUrg\n3Kkbwbf7w0lZXLV3B0TUl/xJAIlvBk4BcBmsLxHA4uYPL4ZLjXvDuacu9PGsFj45\nSVGeF0tPEDpbpaiSb/361gsDTUdWVxnzy2v189bPsPX1oxHSIFMTNDcFLENaY9+N\nQNaFHlHpURceA1bJ8TCt55sRornQMYGbaLHZ6PPmlH7HrhMvh+3QJbBo+d4IWvMp\nzNSS"

    invoke-virtual {v0, v1}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lil;Lin;Z)Lio;
    .locals 3

    .prologue
    .line 19
    new-instance v1, Lio;

    invoke-direct {v1}, Lio;-><init>()V

    .line 20
    invoke-virtual {p1}, Lin;->getSystem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio;->d(Ljava/lang/String;)V

    .line 21
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio;->a(Ljava/lang/Integer;)V

    .line 22
    invoke-static {p1}, Lic;->a(Lin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio;->b(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lid;->a:[I

    invoke-virtual {p0}, Lil;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-object v1

    .line 27
    :pswitch_0
    const-string v0, "https://esbapi.isbanbr.dev.corp/"

    invoke-virtual {v1, v0}, Lio;->a(Ljava/lang/String;)V

    .line 28
    const-string v0, "MIIDwzCCAqugAwIBAgIQRATmR7GhKJtMiYiF1GaPEDANBgkqhkiG9w0BAQsFADBoMRQwEgYKCZImiZPyLGQBGRYEY29ycDEaMBgGCgmSJomT8ixkARkWCnByb2R1YmFuYnIxFTATBgoJkiaJk/IsZAEZFgVwcmJicjEdMBsGA1UEAxMUQ0EtSW50ZXJuYS1TYW50YW5kZXIwHhcNMTUwNzE2MTgzMTE5WhcNMzUwNzE2MTg0MTE5WjBoMRQwEgYKCZImiZPyLGQBGRYEY29ycDEaMBgGCgmSJomT8ixkARkWCnByb2R1YmFuYnIxFTATBgoJkiaJk/IsZAEZFgVwcmJicjEdMBsGA1UEAxMUQ0EtSW50ZXJuYS1TYW50YW5kZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDyslfkQop/oFqkTdt27xFj8i7P4RkzuQTBFlFMZIyEbBNFsfqTz0FNgD6VHpNuQXOShFsry+7vhLpg/3eoAq6gRRNPChLjMsL7qR1aNqRvSSzHLz6hlYKLblKcRO9iC9+Q4pm9VVwMqoAvw9EPirytQM3EN0gub0MtJoPmY/GiubS+hqWcaMIOolKgZ+vxTFGbGyFmUnds4V6xvIBPvP2RpuwVUf6HbibDD6FrExENPIESSZe0UWTDmhrDX1CcaZCafI9l7bqIyykIGuxInQPVS5UWKl9iAuI7KoPb82HXdbo6IBcO0wDRVVN2Q4nAM6MTqAl8VC2lEJJ5UjygqDejAgMBAAGjaTBnMBMGCSsGAQQBgjcUAgQGHgQAQwBBMA4GA1UdDwEB/wQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTBUBwvLeUbTSeKEnlewb6d1+jXzjAQBgkrBgEEAYI3FQEEAwIBADANBgkqhkiG9w0BAQsFAAOCAQEAbtt5Ejpu/gPE/BSU0CKuJPk8WFqZZ+HueZN3VogveuSoNdQiyDGO1abY6tres+MZE1SYZLaiqs4JUXWGpodmDBe23lglSoiDcWX+1/+QPSwwX2SwSY/R8IOlNwcw4XanWL7wRllB6MIW1gRKYTvct2iL8OUBChSSMS30lG5/eTG1D5by6bTNyvcQCAJOLW1xHGhojZWuTNS2VXDe5Rj4tNLidO+kT7pJkCRz/6K+J3fcm125KNitmnhmvP4Zil4ZYZ0Hxp97KnztOeSaeDb3RsFyd9IvrLGGN+C78xtjrYMe2yGNJVlWa/iXFjuyGo+7NMl0mI/XXfUVCPRBhS7RqA=="

    invoke-virtual {v1, v0}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :pswitch_1
    const-string v0, "https://esbapi.santanderbr.pre.corp/"

    invoke-virtual {v1, v0}, Lio;->a(Ljava/lang/String;)V

    .line 32
    const-string v0, "MIIGFTCCBP2gAwIBAgITMgAAB+84fP9OrNIR5AAAAAAH7zANBgkqhkiG9w0BAQsF\nADBoMRQwEgYKCZImiZPyLGQBGRYEY29ycDEaMBgGCgmSJomT8ixkARkWCnByb2R1\nYmFuYnIxFTATBgoJkiaJk/IsZAEZFgVwcmJicjEdMBsGA1UEAxMUQ0EtSW50ZXJu\nYS1TYW50YW5kZXIwHhcNMTcwNzE4MTkyMzA5WhcNMjAwNzE4MTkzMzA5WjCBjzEL\nMAkGA1UEBhMCQlIxEjAQBgNVBAgTCVNhbyBQYXVsbzESMBAGA1UEBxMJU2FvIFBh\ndWxvMRgwFgYDVQQKEw9HUlVQTyBTQU5UQU5ERVIxGDAWBgNVBAsTD0RJVklTSU9O\nIEJSQVNJTDEkMCIGA1UEAxMbZXNiYXBpLnNhbnRhbmRlcmJyLnByZS5jb3JwMIIB\nIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi1CXUAF/fiOnK/6KgwT7EK/a\nZjI+xNMbOBgFDcn2NQpyMXjCXhfKFIeX9o6aIV/iVt7sg3ennzygD7OsPQzd+bTH\nkwjbv1UFkeLXSbsL22kNH/OywGbh3E7k681u2NNfCeUSZgtm0PuTy0OpqpxxrFHN\nCkCb3hlIh8tHh6+sHTqPKKdN3TTAsrO36DyUNADkQ9IZknL9xpBZNdaLqNdM/7Y7\nGCrkZXXP/JpUj15SrGm1bka47Q1O6MS3h/62OZHwrD0qmI5NYkVi0I6V8xdo/eLY\nyfinGW2z8eIRlpGDGk5nEzUSWDXWj6iD+m7ndHNwR2Lz0U6tn/vNzBtuBmJiDQID\nAQABo4ICjjCCAoowJgYDVR0RBB8wHYIbZXNiYXBpLnNhbnRhbmRlcmJyLnByZS5j\nb3JwMB0GA1UdDgQWBBQjKnWZZWjYbxGUvDObSt2TTWy/QzAfBgNVHSMEGDAWgBTB\nUBwvLeUbTSeKEnlewb6d1+jXzjCCAToGA1UdHwSCATEwggEtMIIBKaCCASWgggEh\nhoHObGRhcDovLy9DTj1DQS1JbnRlcm5hLVNhbnRhbmRlcixDTj1zcnZtYnNwdndi\ncjIxLENOPUNEUCxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNl\ncyxDTj1Db25maWd1cmF0aW9uLERDPXByYmJyLERDPXByb2R1YmFuYnIsREM9Y29y\ncD9jZXJ0aWZpY2F0ZVJldm9jYXRpb25MaXN0P2Jhc2U/b2JqZWN0Q2xhc3M9Y1JM\nRGlzdHJpYnV0aW9uUG9pbnSGTmh0dHA6Ly9zcnZtYnNwdndicjIxLnByYmJyLnBy\nb2R1YmFuYnIuY29ycC9DZXJ0RW5yb2xsL0NBLUludGVybmEtU2FudGFuZGVyLmNy\nbDCB0wYIKwYBBQUHAQEEgcYwgcMwgcAGCCsGAQUFBzAChoGzbGRhcDovLy9DTj1D\nQS1JbnRlcm5hLVNhbnRhbmRlcixDTj1BSUEsQ049UHVibGljJTIwS2V5JTIwU2Vy\ndmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1wcmJicixEQz1w\ncm9kdWJhbmJyLERDPWNvcnA/Y0FDZXJ0aWZpY2F0ZT9iYXNlP29iamVjdENsYXNz\nPWNlcnRpZmljYXRpb25BdXRob3JpdHkwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0B\nAQsFAAOCAQEAM/+H/RRDMJjdloRESe20B4O+bCx6y6Lp6UvhVTi4rBTWt407YwZ2\nn91UYKnTwQ0906YrlR/HcIaIxvRG6NU6Zjr/IuwQ2C3i+FKelYnsq/uw0I5GIatQ\nohz4AB/qTbohwS56xFhe//h08sjkUxJckH0t2hkoRgzbR93Pk11Hy7qHJXPLqP/O\nUvWOv2PR75RmC2GloyKqETtQJPfIfGPbb/P8cQ4GKPVFOhCR0YrJ0dC5DyLHwU1W\nuAedS7KcetlHcPRn6QlC5El67HqAd3PiWP4qrK6F6e+2y3k9YTN78TaKY0rpMbJS\nVlf7r6cVYQ839H6BAUxSHz6F8VK7KoLuYg=="

    invoke-virtual {v1, v0}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "https://esbapihi.santander.com.br/"

    invoke-virtual {v1, v0}, Lio;->a(Ljava/lang/String;)V

    .line 36
    const-string v0, "MIIFDjCCA/agAwIBAgIMDulMwwAAAABR03eFMA0GCSqGSIb3DQEBCwUAMIG+MQsw\nCQYDVQQGEwJVUzEWMBQGA1UEChMNRW50cnVzdCwgSW5jLjEoMCYGA1UECxMfU2Vl\nIHd3dy5lbnRydXN0Lm5ldC9sZWdhbC10ZXJtczE5MDcGA1UECxMwKGMpIDIwMDkg\nRW50cnVzdCwgSW5jLiAtIGZvciBhdXRob3JpemVkIHVzZSBvbmx5MTIwMAYDVQQD\nEylFbnRydXN0IFJvb3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBHMjAeFw0x\nNTEwMDUxOTEzNTZaFw0zMDEyMDUxOTQzNTZaMIG6MQswCQYDVQQGEwJVUzEWMBQG\nA1UEChMNRW50cnVzdCwgSW5jLjEoMCYGA1UECxMfU2VlIHd3dy5lbnRydXN0Lm5l\ndC9sZWdhbC10ZXJtczE5MDcGA1UECxMwKGMpIDIwMTIgRW50cnVzdCwgSW5jLiAt\nIGZvciBhdXRob3JpemVkIHVzZSBvbmx5MS4wLAYDVQQDEyVFbnRydXN0IENlcnRp\nZmljYXRpb24gQXV0aG9yaXR5IC0gTDFLMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A\nMIIBCgKCAQEA2j+W0E25L0Tn2zlem1DuXKVh2kFnUwmqAJqOV38pa9vH4SEkqjrQ\njUcj0u1yFvCRIdJdt7hLqIOPt5EyaM/OJZMssn2XyP7BtBe6CZ4DkJN7fEmDImiK\nm95HwzGYei59QAvS7z7Tsoyqj0ip/wDoKVgG97aTWpRzJiatWA7lQrjV6nN5ZGhT\nJbiEz5R6rgZFDKNrTdDGvuoYpDbwkrK6HIiPOlJ/915tgxyd8B/lw9bdpXiSPbBt\nLOrJz5RBGXFEaLpHPATpXbo+8DX3Fbae8i4VHj9HyMg4p3NFXU2wO7GOFyk36t0F\nASK7lDYqjVs1/lMZLwhGwSqzGmIdTivZGwIDAQABo4IBDDCCAQgwDgYDVR0PAQH/\nBAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwMwYIKwYBBQUHAQEEJzAlMCMGCCsG\nAQUFBzABhhdodHRwOi8vb2NzcC5lbnRydXN0Lm5ldDAwBgNVHR8EKTAnMCWgI6Ah\nhh9odHRwOi8vY3JsLmVudHJ1c3QubmV0L2cyY2EuY3JsMDsGA1UdIAQ0MDIwMAYE\nVR0gADAoMCYGCCsGAQUFBwIBFhpodHRwOi8vd3d3LmVudHJ1c3QubmV0L3JwYTAd\nBgNVHQ4EFgQUgqJwdN28Uz/Pe9T3zX+nYMYKTL8wHwYDVR0jBBgwFoAUanImetAe\n733nO2lR1GyNn5ASZqswDQYJKoZIhvcNAQELBQADggEBADnVjpiDYcgsY9NwHRkw\ny/YJrMxp1cncN0HyMg/vdMNY9ngnCTQIlZIv19+4o/0OgemknNM/TWgrFTEKFcxS\nBJPok1DD2bHi4Wi3Ogl08TRYCj93mEC45mj/XeTIRsXsgdfJghhcg85x2Ly/rJkC\nk9uUmITSnKa1/ly78EqvIazCP0kkZ9Yujs+szGQVGHLlbHfTUqi53Y2sAEo1GdRv\nc6N172tkw+CNgxKhiucOhk3YtCAbvmqljEtoZuMrx1gL+1YQ1JH7HdMxWBCMRON1\nexCdtTix9qrKgWRs6PLigVWXUX/hwidQosk8WwBD9lu51aX8/wdQQGcHsFXwt35u\nLcw="

    invoke-virtual {v1, v0}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_3
    if-nez p2, :cond_0

    const-string v0, "https://esbapi.santander.com.br/"

    :goto_1
    invoke-virtual {v1, v0}, Lio;->a(Ljava/lang/String;)V

    .line 42
    if-nez p2, :cond_1

    const-string v0, "MIIEPjCCAyagAwIBAgIESlOMKDANBgkqhkiG9w0BAQsFADCBvjELMAkGA1UEBhMC\nVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xKDAmBgNVBAsTH1NlZSB3d3cuZW50\ncnVzdC5uZXQvbGVnYWwtdGVybXMxOTA3BgNVBAsTMChjKSAyMDA5IEVudHJ1c3Qs\nIEluYy4gLSBmb3IgYXV0aG9yaXplZCB1c2Ugb25seTEyMDAGA1UEAxMpRW50cnVz\ndCBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IC0gRzIwHhcNMDkwNzA3MTcy\nNTU0WhcNMzAxMjA3MTc1NTU0WjCBvjELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUVu\ndHJ1c3QsIEluYy4xKDAmBgNVBAsTH1NlZSB3d3cuZW50cnVzdC5uZXQvbGVnYWwt\ndGVybXMxOTA3BgNVBAsTMChjKSAyMDA5IEVudHJ1c3QsIEluYy4gLSBmb3IgYXV0\naG9yaXplZCB1c2Ugb25seTEyMDAGA1UEAxMpRW50cnVzdCBSb290IENlcnRpZmlj\nYXRpb24gQXV0aG9yaXR5IC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK\nAoIBAQC6hLZy254Ma+KZ6TABp3bqMriVQRrJ2mFOWHLP/vaCeb9zYQYKpSfYs1/T\nRU4cctZOMvJyig/3gxnQaoCAAEUesMfnmr8SVycco2gvCoe9amsOXmXzHHfV1IWN\ncCG0szLni6LVhjkCsbjSR87kyUnEO6fe+1R9V77w6G7CebI6C1XiUJgWMhNcL3hW\nwcKUs/Ja5CeanyTXxuzQmyWC48zCxEXFjJd6BmsqEZ+pCm5IO2/b1BEZQvePB7/1\nU1+cPvQXLOZprE4yTGJ36rfo5bs0vBmLrpxR57d+tVOxMyLlbc9wPBr64ptntoP0\njaWvYkxN4FisZDQSA/i2jZRjJKRxAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAP\nBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBRqciZ60B7vfec7aVHUbI2fkBJmqzAN\nBgkqhkiG9w0BAQsFAAOCAQEAeZ8dlsa2eT8ijYfThwMEYGprmi5ZiXMRrEPR9RP/\njTkrwPK9T3CMqS/qF8QLVJ7UG5aYMzyorWKiAHarWWluBh1+xLlEjZivEtRh2woZ\nRkfz6/djwUAFQKXSt/S1mja/qYh2iARVBCuch38aNzx+LaUa2NSJXsq9rD1s2G2v\n1fN2D807iDginWyTmsQ9v4IbZT+mD12q/OWyFcq1rca8PdCE6OoGcrBNOTJ4vz4R\nnAuknZoh8/CbCzB428Hch0P+vGOaysXCHMnHjf87ElgI5rY97HosTvuDls4MPGmH\nVHOkc8KT/1EQrBVUAdj8BbGJoX90g5pJ19xOe4pIb4tF9g=="

    :goto_2
    invoke-virtual {v1, v0}, Lio;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "https://esbapi-geo.santander.com.br/"

    goto :goto_1

    .line 42
    :cond_1
    const-string v0, "MIIFYDCCBEigAwIBAgIRALdO9thPMzp8AAAAAFDdenYwDQYJKoZIhvcNAQELBQAw\ngboxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1FbnRydXN0LCBJbmMuMSgwJgYDVQQL\nEx9TZWUgd3d3LmVudHJ1c3QubmV0L2xlZ2FsLXRlcm1zMTkwNwYDVQQLEzAoYykg\nMjAxMiBFbnRydXN0LCBJbmMuIC0gZm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkxLjAs\nBgNVBAMTJUVudHJ1c3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBMMUswHhcN\nMTcwNzI4MDgwNDUzWhcNMTgwNzI3MDgzNDUyWjCBjzELMAkGA1UEBhMCRVMxEjAQ\nBgNVBAgTCVNhbnRhbmRlcjESMBAGA1UEBxMJU2FudGFuZGVyMRgwFgYDVQQKEw9H\nUlVQTyBTQU5UQU5ERVIxGDAWBgNVBAsTD0RJVklTSU9OIEJSQVNJTDEkMCIGA1UE\nAxMbZXNiYXBpLWdlby5zYW50YW5kZXIuY29tLmJyMIIBIjANBgkqhkiG9w0BAQEF\nAAOCAQ8AMIIBCgKCAQEAtVw4NGNHvzhtXoBg1w59T05kCqJagd8XUK9aokte+gcC\nWMrh2HVCLrSXvnhQ5UvjuIF2qDGUgsDIARWYjaV3IyFqeryT803pmknURMFD/6fc\n3quvnNiRS2px+7dpxWtAXtZe05XFjz3vYAXvkbqU+pzwLpIo7ywBHvoTztzeqccL\n+Ai6VfHqgYBtQf+TgIFRlqQJR2nWGpMrDPRz9/1NryY7bngE7vhVEFyaguEN0vV0\nro0a0G/1yXgwRAoWRuyt+sPShZ2LOqHJq7p9k9l+z7Lzd5DD0LoalhNLyA1oX3um\nmXAqT/rKFlzkBneF/a+st35+vs4yl1kGnhqb/mPnPwIDAQABo4IBiDCCAYQwDgYD\nVR0PAQH/BAQDAgWgMBMGA1UdJQQMMAoGCCsGAQUFBwMBMDMGA1UdHwQsMCowKKAm\noCSGImh0dHA6Ly9jcmwuZW50cnVzdC5uZXQvbGV2ZWwxay5jcmwwSwYDVR0gBEQw\nQjA2BgpghkgBhvpsCgEFMCgwJgYIKwYBBQUHAgEWGmh0dHA6Ly93d3cuZW50cnVz\ndC5uZXQvcnBhMAgGBmeBDAECAjBoBggrBgEFBQcBAQRcMFowIwYIKwYBBQUHMAGG\nF2h0dHA6Ly9vY3NwLmVudHJ1c3QubmV0MDMGCCsGAQUFBzAChidodHRwOi8vYWlh\nLmVudHJ1c3QubmV0L2wxay1jaGFpbjI1Ni5jZXIwJgYDVR0RBB8wHYIbZXNiYXBp\nLWdlby5zYW50YW5kZXIuY29tLmJyMB8GA1UdIwQYMBaAFIKicHTdvFM/z3vU981/\np2DGCky/MB0GA1UdDgQWBBRvUR5cOokloGUOGqBCfcqRXLnBbjAJBgNVHRMEAjAA\nMA0GCSqGSIb3DQEBCwUAA4IBAQA54wkHjNNdd1JL0maJIrDAtxpEYI8XIv0UzPgm\nbLOE1TFtfHozNnlQWrj7vPCM/plxedq0M6NPTOMnphTPgn+89Pb1H6awiD5rYV9R\nIomtbWfgxv+nREhA6BfXTzbMUaia2Ujo8JxwFlf1tle1UnnD3T92W9/4J2KxUS7z\nzRpzz4HR0SORb3tIJwS2EpfU6zphfVLNHHhB1C///zcE6y23+HY7plgXhvO8Dj8e\n3asGi2wwap2vsOPJZeuBjE1PclcGN/fjb2XbDz8gS2K+SS0al7IrIeOW3s1uTuWL\nUuQJDzM84FJtFRH5lbTMbdTqmUIZEIIjSvYC/plRNWfE6V43"

    goto :goto_2

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lin;->MBB:Lin;

    invoke-virtual {p0, v0}, Lin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "37826a50a428013485b60050569009ca"

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lin;->IBJ:Lin;

    invoke-virtual {p0, v0}, Lin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "ce10b90068d9013569b3005056906329"

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
