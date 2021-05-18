.class Llwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llvl;


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Llwu;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkwh;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Llwu;->a:Llwr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Llwr;->a(Lkwh;I)V

    .line 308
    return-void
.end method
