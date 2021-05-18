.class Lneg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lnec;


# direct methods
.method constructor <init>(Lnec;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lneg;->a:Lnec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lneg;->a:Lnec;

    invoke-static {v0}, Lnec;->a(Lnec;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
