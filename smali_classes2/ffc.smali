.class public Lffc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field final synthetic f:Lffa;


# direct methods
.method public constructor <init>(Lffa;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iput-object p1, p0, Lffc;->f:Lffa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object v1, p0, Lffc;->a:Ljava/lang/String;

    .line 342
    iput-object v1, p0, Lffc;->b:Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lffc;->c:I

    .line 344
    iput-object v1, p0, Lffc;->d:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Lffc;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 360
    const-string v0, "-1"

    iput-object v0, p0, Lffc;->a:Ljava/lang/String;

    .line 361
    const-string v0, "-1"

    iput-object v0, p0, Lffc;->b:Ljava/lang/String;

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lffc;->c:I

    .line 363
    const-string v0, "-1"

    iput-object v0, p0, Lffc;->d:Ljava/lang/String;

    .line 364
    const-string v0, "-1"

    iput-object v0, p0, Lffc;->e:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public a(Landroid/net/wifi/WifiInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    iput-object v2, p0, Lffc;->a:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lffc;->b:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lffc;->c:I

    .line 351
    iput-object v2, p0, Lffc;->d:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lffc;->e:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lffc;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lffc;->e:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lffc;->e:Ljava/lang/String;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lffc;->e:Ljava/lang/String;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    iput-object v2, p0, Lffc;->e:Ljava/lang/String;

    .line 357
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iput-object v1, p0, Lffc;->a:Ljava/lang/String;

    .line 369
    iput-object v1, p0, Lffc;->b:Ljava/lang/String;

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lffc;->c:I

    .line 371
    iput-object v1, p0, Lffc;->d:Ljava/lang/String;

    .line 372
    iput-object v1, p0, Lffc;->e:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 377
    const-string v1, "Station Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    iget-object v1, p0, Lffc;->a:Ljava/lang/String;

    invoke-static {v1}, Lfgf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v1, "BBSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    iget-object v1, p0, Lffc;->b:Ljava/lang/String;

    invoke-static {v1}, Lfgf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v1, "Signal Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    iget v1, p0, Lffc;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 385
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v1, "Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    iget-object v1, p0, Lffc;->d:Ljava/lang/String;

    invoke-static {v1}, Lfgf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v1, "SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    iget-object v1, p0, Lffc;->e:Ljava/lang/String;

    invoke-static {v1}, Lfgf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
