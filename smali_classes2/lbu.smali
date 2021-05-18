.class Llbu;
.super Llbb;
.source "SourceFile"


# instance fields
.field final synthetic a:Llbq;


# direct methods
.method constructor <init>(Llbq;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Llbu;->a:Llbq;

    invoke-direct {p0}, Llbb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Llbu;->a:Llbq;

    invoke-static {v0}, Llbq;->c(Llbq;)V

    .line 217
    return-void
.end method
