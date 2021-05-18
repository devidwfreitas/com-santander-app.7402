.class Lkoq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lkor;
    .annotation runtime Leks;
        a = "account"
    .end annotation
.end field

.field final synthetic b:Lkoo;


# direct methods
.method private constructor <init>(Lkoo;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lkoq;->b:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lkor;

    invoke-direct {v0, p0}, Lkor;-><init>(Lkoq;)V

    iput-object v0, p0, Lkoq;->a:Lkor;

    return-void
.end method

.method synthetic constructor <init>(Lkoo;Lkop;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lkoq;-><init>(Lkoo;)V

    return-void
.end method
