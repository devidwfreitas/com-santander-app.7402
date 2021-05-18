.class Lffb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:Z

.field public c:D

.field public d:Z

.field public e:D

.field public f:Z

.field public g:D

.field public h:Z

.field public i:D

.field public j:Z

.field public k:J

.field public l:D

.field public m:Z

.field public n:D

.field public o:Z

.field public p:I

.field final synthetic q:Lffa;


# direct methods
.method constructor <init>(Lffa;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lffb;->q:Lffa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iput-boolean v2, p0, Lffb;->b:Z

    .line 287
    iput-boolean v2, p0, Lffb;->d:Z

    .line 288
    iput-boolean v2, p0, Lffb;->f:Z

    .line 289
    iput-boolean v2, p0, Lffb;->h:Z

    .line 290
    iput-boolean v2, p0, Lffb;->j:Z

    .line 291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lffb;->k:J

    .line 292
    iput-boolean v2, p0, Lffb;->m:Z

    .line 293
    iput-boolean v2, p0, Lffb;->o:Z

    .line 294
    return-void
.end method

.method a(Landroid/location/Location;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-virtual {p0}, Lffb;->a()V

    .line 302
    iput p2, p0, Lffb;->p:I

    .line 304
    if-eqz p1, :cond_4

    .line 305
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lffb;->c:D

    .line 306
    iput-boolean v2, p0, Lffb;->d:Z

    .line 307
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lffb;->a:D

    .line 308
    iput-boolean v2, p0, Lffb;->b:Z

    .line 309
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lffb;->e:D

    .line 311
    iput-boolean v2, p0, Lffb;->f:Z

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lffb;->g:D

    .line 315
    iput-boolean v2, p0, Lffb;->h:Z

    .line 316
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lffb;->i:D

    .line 318
    iput-boolean v2, p0, Lffb;->j:Z

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lffb;->l:D

    .line 324
    iput-boolean v2, p0, Lffb;->m:Z

    .line 327
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lffb;->n:D

    .line 329
    iput-boolean v2, p0, Lffb;->o:Z

    .line 331
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lffb;->k:J

    .line 333
    :cond_4
    return-void
.end method
