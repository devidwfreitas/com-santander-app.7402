.class Llox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llkl;


# instance fields
.field final synthetic a:Llou;


# direct methods
.method constructor <init>(Llou;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Llox;->a:Llou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Llox;->a:Llou;

    invoke-static {v0, p1}, Llou;->a(Llou;I)V

    .line 171
    return-void
.end method
