.class public final Lnlw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnlh;
.implements Lnlu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnlh",
        "<TT;>;",
        "Lnlu",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lnlw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnlw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lnlw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnlw;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnlw;->a:Lnlw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lnlw;->b:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lnlu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lnlu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lnlw;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lnmd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lnlw;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a()Lnlw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnlw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lnlw;->a:Lnlw;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lnlu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lnlu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    invoke-static {}, Lnlw;->a()Lnlw;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lnlw;

    invoke-direct {v0, p0}, Lnlw;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lnlw;->b:Ljava/lang/Object;

    return-object v0
.end method
