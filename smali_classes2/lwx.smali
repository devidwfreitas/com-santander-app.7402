.class Llwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llvu;


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Llwx;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llvv;Lkwk;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Llwx;->a:Llwr;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Llwr;->a(Lkwk;I)V

    .line 443
    return-void
.end method
