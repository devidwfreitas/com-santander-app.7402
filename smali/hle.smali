.class public Lhle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlh;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "status"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cancelDate"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bankAutentication"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lhle;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhle;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lhle;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhle;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lhle;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhle;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhle;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhle;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public getDataHoraTransacao()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lhle;->b:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 38
    const-string v1, "dd/MM/yyyy - HH:mm"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v0, ""

    goto :goto_0
.end method
