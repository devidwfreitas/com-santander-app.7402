.class public Lclr;
.super Lclp;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcmt;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lclp;-><init>()V

    .line 24
    iput-object p1, p0, Lclr;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lclr;->c:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lclr;->e:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lclr;->b:Z

    .line 28
    sget-object v0, Lcmt;->d:Lcmt;

    iput-object v0, p0, Lclr;->d:Lcmt;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lclr;

    invoke-direct {v0, p0, p1, p2, p3}, Lclr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lclr;->a()V

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 33
    new-instance v0, Lcms;

    invoke-direct {v0}, Lcms;-><init>()V

    iget-object v1, p0, Lclr;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lcms;->e(Ljava/lang/String;)Lcms;

    move-result-object v0

    iget-object v1, p0, Lclr;->d:Lcmt;

    .line 35
    invoke-virtual {v0, v1}, Lcms;->a(Lcmt;)Lcms;

    move-result-object v0

    iget-object v1, p0, Lclr;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcms;->c(Ljava/lang/String;)Lcms;

    move-result-object v2

    .line 37
    iget-object v0, p0, Lclr;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lclr;->b:Z

    invoke-static {v0, v2, v1}, Lcmn;->a(Landroid/content/Context;Lcms;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lclr;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lclr;->b:Z

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lclr;->a(Landroid/content/Context;Lcms;ZZZ)V

    goto :goto_0
.end method
