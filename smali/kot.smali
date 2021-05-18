.class Lkot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lkov;
    .annotation runtime Leks;
        a = "person"
    .end annotation
.end field

.field final synthetic b:Lkoo;


# direct methods
.method private constructor <init>(Lkoo;)V
    .locals 1

    .prologue
    .line 168
    iput-object p1, p0, Lkot;->b:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lkov;

    invoke-direct {v0, p0}, Lkov;-><init>(Lkot;)V

    iput-object v0, p0, Lkot;->a:Lkov;

    return-void
.end method

.method synthetic constructor <init>(Lkoo;Lkop;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lkot;-><init>(Lkoo;)V

    return-void
.end method
