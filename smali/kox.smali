.class Lkox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lkow;
    .annotation runtime Leks;
        a = "phone"
    .end annotation
.end field

.field final synthetic b:Lkoo;


# direct methods
.method private constructor <init>(Lkoo;)V
    .locals 3

    .prologue
    .line 237
    iput-object p1, p0, Lkox;->b:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Lkow;

    iget-object v1, p0, Lkox;->b:Lkoo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkow;-><init>(Lkoo;Lkop;)V

    iput-object v0, p0, Lkox;->a:Lkow;

    return-void
.end method

.method synthetic constructor <init>(Lkoo;Lkop;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lkox;-><init>(Lkoo;)V

    return-void
.end method
