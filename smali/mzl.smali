.class public Lmzl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "CellTowerId"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "DeviceSystemVersion"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "SDK_VERSION"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "DeviceName"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "WiFiMacAddress"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "RSA_ApplicationKey"
    .end annotation
.end field

.field private g:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "Emulator"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "MNC"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "LocationAreaCode"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "PhoneNumber"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "OS_ID"
    .end annotation
.end field

.field private l:Ljava/lang/Boolean;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "MultitaskingSupported"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "Languages"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "DeviceModel"
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmzj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "GeoLocationInfo"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "DeviceSystemName"
    .end annotation
.end field

.field private q:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "Compromised"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "ScreenSize"
    .end annotation
.end field

.field private s:Lmzm;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "WiFiNetworksData"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "MCC"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "SIM_ID"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "HardwareID"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "otherId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmzl;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmzl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lmzl;->l:Ljava/lang/Boolean;

    .line 304
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lmzl;->g:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmzl;->a:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmzj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    iput-object p1, p0, Lmzl;->o:Ljava/util/List;

    .line 358
    return-void
.end method

.method public a(Lmzm;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lmzl;->s:Lmzm;

    .line 430
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmzl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lmzl;->q:Ljava/lang/Integer;

    .line 394
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lmzl;->b:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmzl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmzl;->c:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmzl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmzl;->d:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmzl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lmzl;->e:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmzl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lmzl;->f:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmzl;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lmzl;->h:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lmzl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lmzl;->i:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lmzl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lmzl;->j:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lmzl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lmzl;->k:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lmzl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lmzl;->m:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public l()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lmzl;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lmzl;->n:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lmzl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lmzl;->p:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lmzl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lmzl;->r:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmzj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lmzl;->o:Ljava/util/List;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lmzl;->t:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lmzl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lmzl;->u:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public q()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lmzl;->q:Ljava/lang/Integer;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lmzl;->v:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lmzl;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lmzl;->w:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public s()Lmzm;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lmzl;->s:Lmzm;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lmzl;->t:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lmzl;->u:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lmzl;->v:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lmzl;->w:Ljava/lang/String;

    return-object v0
.end method
