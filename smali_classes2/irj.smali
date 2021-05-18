.class Lirj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lipr;


# instance fields
.field final synthetic a:Lird;


# direct methods
.method constructor <init>(Lird;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lirj;->a:Lird;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lirj;->a:Lird;

    invoke-static {v0}, Lird;->a(Lird;)Lirb;

    move-result-object v0

    invoke-interface {v0}, Lirb;->ak()V

    .line 832
    return-void
.end method
