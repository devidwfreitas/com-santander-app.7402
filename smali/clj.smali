.class public Lclj;
.super Lclp;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcmt;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lclp;-><init>()V

    .line 51
    iput-object p1, p0, Lclj;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lclj;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lclj;->c:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lclj;->e:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lclj;->f:Ljava/lang/String;

    .line 56
    iput-boolean p6, p0, Lclj;->g:Z

    .line 57
    instance-of v0, p0, Lclm;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcmt;->b:Lcmt;

    .line 59
    :goto_0
    iput-object v0, p0, Lclj;->d:Lcmt;

    .line 60
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcmt;->c:Lcmt;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 37
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lclj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 157
    new-instance v0, Lclj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lclj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {v0}, Lclj;->a()V

    .line 164
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 142
    new-instance v0, Lclj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lclj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    invoke-virtual {v0}, Lclj;->a()V

    .line 144
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Failed to register referrer from a null click url"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return v0

    .line 117
    :cond_0
    const-string v1, "GoogleConversionReporter"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Registering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p1}, Lcmn;->a(Landroid/net/Uri;)Lcmr;

    move-result-object v1

    .line 119
    if-nez v1, :cond_1

    .line 120
    const-string v1, "GoogleConversionReporter"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to parse referrer from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0, v1}, Lcmn;->a(Landroid/content/Context;Lcmr;)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    const-string v1, "GoogleConversionReporter"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Successfully registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    const-string v1, "GoogleConversionReporter"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to register: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 67
    new-instance v0, Lcms;

    invoke-direct {v0}, Lcms;-><init>()V

    iget-object v1, p0, Lclj;->b:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Lcms;->a(Ljava/lang/String;)Lcms;

    move-result-object v0

    iget-object v1, p0, Lclj;->d:Lcmt;

    .line 69
    invoke-virtual {v0, v1}, Lcms;->a(Lcmt;)Lcms;

    move-result-object v0

    iget-object v1, p0, Lclj;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Lcms;->b(Ljava/lang/String;)Lcms;

    move-result-object v0

    iget-object v1, p0, Lclj;->e:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Lcms;->c(Ljava/lang/String;)Lcms;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lclj;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lclj;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcms;->d(Ljava/lang/String;)Lcms;

    .line 77
    :cond_0
    iget-object v0, p0, Lclj;->d:Lcmt;

    sget-object v1, Lcmt;->c:Lcmt;

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lclj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcmf;->a(Landroid/content/Context;)Lcmf;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lclj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcmf;->c(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lclj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcmf;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcms;->a(Z)Lcms;

    .line 83
    :cond_1
    iget-object v0, p0, Lclj;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lclj;->g:Z

    invoke-static {v0, v2, v1}, Lcmn;->a(Landroid/content/Context;Lcms;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    :goto_0
    return-void

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    :try_start_0
    iget-object v1, p0, Lclj;->d:Lcmt;

    sget-object v3, Lcmt;->c:Lcmt;

    if-ne v1, v3, :cond_3

    .line 92
    iget-object v0, p0, Lclj;->a:Landroid/content/Context;

    iget-object v1, p0, Lclj;->b:Ljava/lang/String;

    .line 93
    invoke-static {v0, v1}, Lcmn;->a(Landroid/content/Context;Ljava/lang/String;)Lcmq;

    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Lcms;->a(Lcmq;)Lcms;

    .line 96
    :goto_1
    iget-object v1, p0, Lclj;->a:Landroid/content/Context;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lclj;->g:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lclj;->a(Landroid/content/Context;Lcms;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1
.end method
