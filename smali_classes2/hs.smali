.class public final Lhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhv;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<",
            "Liz;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<",
            "Ljd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lnlj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnlj",
            "<",
            "Ljb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lhs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lhs;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lhu;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-boolean v0, Lhs;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lhs;->a(Lhu;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lhu;Lht;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lhs;-><init>(Lhu;)V

    return-void
.end method

.method public static a()Lhu;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lhu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhu;-><init>(Lht;)V

    return-object v0
.end method

.method private a(Lhu;)V
    .locals 2

    .prologue
    .line 34
    invoke-static {p1}, Lhu;->a(Lhu;)Lhw;

    move-result-object v0

    invoke-static {v0}, Lhx;->a(Lhw;)Lnlu;

    move-result-object v0

    iput-object v0, p0, Lhs;->b:Lnne;

    .line 37
    invoke-static {p1}, Lhu;->a(Lhu;)Lhw;

    move-result-object v0

    invoke-static {v0}, Lhy;->a(Lhw;)Lnlu;

    move-result-object v0

    iput-object v0, p0, Lhs;->c:Lnne;

    .line 41
    invoke-static {p1}, Lhu;->a(Lhu;)Lhw;

    move-result-object v0

    iget-object v1, p0, Lhs;->c:Lnne;

    .line 40
    invoke-static {v0, v1}, Lhz;->a(Lhw;Lnne;)Lnlu;

    move-result-object v0

    iput-object v0, p0, Lhs;->d:Lnne;

    .line 43
    iget-object v0, p0, Lhs;->d:Lnne;

    .line 44
    invoke-static {v0}, Ljc;->a(Lnne;)Lnlj;

    move-result-object v0

    iput-object v0, p0, Lhs;->e:Lnlj;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljb;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhs;->e:Lnlj;

    invoke-interface {v0, p1}, Lnlj;->injectMembers(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhs;->b:Lnne;

    invoke-interface {v0}, Lnne;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
