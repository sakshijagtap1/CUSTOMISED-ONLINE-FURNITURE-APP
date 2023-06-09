.class public Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;
.super Ljava/lang/Object;
.source "DragSourceEventProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DRAG_ACTION_CHANGED:I = 0x3

.field public static final DRAG_DROP_END:I = 0x6

.field public static final DRAG_ENTER:I = 0x1

.field public static final DRAG_EXIT:I = 0x5

.field public static final DRAG_MOUSE_MOVED:I = 0x4

.field public static final DRAG_OVER:I = 0x2


# instance fields
.field private final context:Ljava/awt/dnd/DragSourceContext;

.field private final modifiers:I

.field private final success:Z

.field private final targetActions:I

.field private final type:I

.field private final userAction:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Ljava/awt/dnd/DragSourceContext;IIILjava/awt/Point;I)V
    .registers 8
    .param p1, "context"    # Ljava/awt/dnd/DragSourceContext;
    .param p2, "type"    # I
    .param p3, "userAction"    # I
    .param p4, "targetActions"    # I
    .param p5, "location"    # Ljava/awt/Point;
    .param p6, "modifiers"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    .line 56
    iput p2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->type:I

    .line 57
    iput p3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    .line 58
    iput p4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->targetActions:I

    .line 59
    iget v0, p5, Ljava/awt/Point;->x:I

    iput v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    .line 60
    iget v0, p5, Ljava/awt/Point;->y:I

    iput v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    .line 61
    iput p6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->modifiers:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->success:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/awt/dnd/DragSourceContext;IIZLjava/awt/Point;I)V
    .registers 8
    .param p1, "context"    # Ljava/awt/dnd/DragSourceContext;
    .param p2, "type"    # I
    .param p3, "userAction"    # I
    .param p4, "success"    # Z
    .param p5, "location"    # Ljava/awt/Point;
    .param p6, "modifiers"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    .line 69
    iput p2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->type:I

    .line 70
    iput p3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    .line 71
    iput p3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->targetActions:I

    .line 72
    iget v0, p5, Ljava/awt/Point;->x:I

    iput v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    .line 73
    iget v0, p5, Ljava/awt/Point;->y:I

    iput v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    .line 74
    iput p6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->modifiers:I

    .line 75
    iput-boolean p4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->success:Z

    .line 76
    return-void
.end method

.method private newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;
    .registers 8

    .prologue
    .line 103
    new-instance v0, Ljava/awt/dnd/DragSourceDragEvent;

    .line 104
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    iget v2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    iget v3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->targetActions:I

    iget v4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->modifiers:I

    iget v5, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    iget v6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    .line 103
    invoke-direct/range {v0 .. v6}, Ljava/awt/dnd/DragSourceDragEvent;-><init>(Ljava/awt/dnd/DragSourceContext;IIIII)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->type:I

    packed-switch v0, :pswitch_data_54

    .line 100
    :goto_5
    return-void

    .line 81
    :pswitch_6
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragEnter(Ljava/awt/dnd/DragSourceDragEvent;)V

    goto :goto_5

    .line 84
    :pswitch_10
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragOver(Ljava/awt/dnd/DragSourceDragEvent;)V

    goto :goto_5

    .line 87
    :pswitch_1a
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dropActionChanged(Ljava/awt/dnd/DragSourceDragEvent;)V

    goto :goto_5

    .line 90
    :pswitch_24
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragMouseMoved(Ljava/awt/dnd/DragSourceDragEvent;)V

    goto :goto_5

    .line 93
    :pswitch_2e
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    new-instance v1, Ljava/awt/dnd/DragSourceEvent;

    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    iget v3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    iget v4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/dnd/DragSourceEvent;-><init>(Ljava/awt/dnd/DragSourceContext;II)V

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragExit(Ljava/awt/dnd/DragSourceEvent;)V

    goto :goto_5

    .line 96
    :pswitch_3f
    iget-object v6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    new-instance v0, Ljava/awt/dnd/DragSourceDropEvent;

    .line 97
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    iget v2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    iget-boolean v3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->success:Z

    iget v4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    iget v5, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    invoke-direct/range {v0 .. v5}, Ljava/awt/dnd/DragSourceDropEvent;-><init>(Ljava/awt/dnd/DragSourceContext;IZII)V

    .line 96
    invoke-virtual {v6, v0}, Ljava/awt/dnd/DragSourceContext;->dragExit(Ljava/awt/dnd/DragSourceEvent;)V

    goto :goto_5

    .line 79
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
        :pswitch_3f
    .end packed-switch
.end method
