.class public Lbvg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lbvi;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lbvi;->a(Lbvi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvg;->a:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lbvi;->b(Lbvi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvg;->b:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lbvi;->c(Lbvi;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbvg;->c:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lbvi;Lbvh;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lbvg;-><init>(Lbvi;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbvg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbvg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbvg;->c:Ljava/lang/Boolean;

    return-object v0
.end method
